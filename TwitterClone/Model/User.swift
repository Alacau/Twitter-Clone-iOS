//
//  User.swift
//  TwitterClone
//
//  Created by Alan Cao on 4/23/20.
//  Copyright © 2020 Alan Cao. All rights reserved.
//

import Foundation
import Firebase

struct User {
    let uid: String
    let email: String
    var fullname: String
    var username: String
    var profileImageUrl: URL?
    var isFollowed = false
    var stats: UserRelationStats?
    var bio: String?
    
    var isCurrentUser: Bool {
        return Auth.auth().currentUser?.uid == uid
    }
    
    init(uid: String, dictionary: [String: AnyObject]) {
        self.uid = uid
        
        self.email = dictionary["email"] as? String ?? ""
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.bio = dictionary["bio"] as? String ?? ""
        
        if let profileImageUrlString = dictionary["profileImageUrl"] as? String {
            guard let url = URL(string: profileImageUrlString) else { return }
            self.profileImageUrl = url
        }
    }
}

struct UserRelationStats {
    var followers: Int
    var following: Int
}
