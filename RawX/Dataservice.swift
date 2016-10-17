//
//  Dataservice.swift
//  RawX
//
//  Created by Kevin Rogers on 10/15/16.
//  Copyright © 2016 Kevin Rogers. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = FIRDatabase.database().reference()

class DataService {
    
    static let ds = DataService()
    
    private var _REF_BASE = DB_BASE
    private var _REF_POSTS = DB_BASE.child("posts")
    private var _REF_USERS = DB_BASE.child("users")
    
    var REF_BASE: FIRDatabaseReference{
        return _REF_BASE
    }
    
    var REF_POSTS: FIRDatabaseReference{
        return _REF_BASE
    }
    var REF_USEES: FIRDatabaseReference{
        return _REF_USERS
    }
    func createfirbaseUser(uid: String, userData: Dictionary<String, String>){
        _REF_USERS.child(uid).updateChildValues(userData)
    
    }
    
        
    }
