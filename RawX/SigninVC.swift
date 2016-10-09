//
//  SigninVC.swift
//  RawX
//
//  Created by Kevin Rogers on 10/8/16.
//  Copyright © 2016 Kevin Rogers. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

class SigninVC: UIViewController {
    @IBOutlet weak var emailfield: detailedField!
    @IBOutlet weak var pwdfield: detailedField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func facebookBTNtapped(_ sender: AnyObject) {
        
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("Kev: unable authenticate with facebook - \(error)")
            }else if result?.isCancelled == true {
                print("kev: User Cancelled Facebook authentification")
            }else {
                print ("kev: Successfuly authenticated with facebook")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credential)
            }
        }
    
        
    }
    func firebaseAuth(_ credential: FIRAuthCredential){
        FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
            if error != nil{
                print( "Kev: Unable to authenticate with Firebase - \(error)")
                
            }else{
                print("kev: Successfully authenticated with Firebase")
            }
        })
    }

    @IBAction func SigninTapped(_ sender: AnyObject) {
        if let email = emailfield.text, let pwd = pwdfield.text{
            FIRAuth.auth()?.signIn(withEmail: email, password: pwd, completion: { (user, error) in
                if error == nil {
                    print("kev: email user authenticated with Forebase")
                }else{
                    FIRAuth.auth()?.createUser(withEmail:email, password: pwd, completion: { (user, error) in
                        if error == nil{
                            print("Kev: Unable to authenticate with Firebase using email")
                        }
                        else{
                            print("Kev: Successfully authenticated with Firebase")
                        }
                    })
                }
            })
            
        }
    }
}

