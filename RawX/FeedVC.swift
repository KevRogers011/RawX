//
//  FeedVC.swift
//  RawX
//
//  Created by Kevin Rogers on 10/9/16.
//  Copyright © 2016 Kevin Rogers. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class FeedVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableview.delegate = self
        tableview.dataSource = self
        
        DataService.ds.REF_POSTS.observe(.value, with: { (snapshot) in
            print(snapshot.value)
        })
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableview.dequeueReusableCell(withIdentifier: "postcell") as! postcell
    }
    
    @IBAction func logouttapped(_ sender: AnyObject) {
            let removeSuccessful: Bool = KeychainWrapper.standard.removeObject(forKey: key_uid)
            print("Kev: ID removed from keychain \(removeSuccessful)")
            try! FIRAuth.auth()?.signOut()
        self.dismiss(animated: true, completion: nil)
    }
    


}

