//
//  EditProfileViewModel.swift
//  TwitterClone
//
//  Created by Alan Cao on 5/27/20.
//  Copyright © 2020 Alan Cao. All rights reserved.
//

import Foundation

enum EditProfileOptions: Int, CaseIterable {
    case fullname
    case username
    case bio
    
    var description: String {
        switch self {
        case .fullname: return "Fullname"
        case .username: return "Username"
        case .bio: return "Bio"
        }
    }
}

struct EditProfileViewModel {
    private let user: User
    let option: EditProfileOptions
    
    var titleText: String {
        return option.description
    }
    
    var optionValue: String? {
        switch option {
        case .username: return user.username
        case .fullname: return user.fullname
        case .bio: return user.bio
        }
    }
    
    var shouldHideTextField: Bool {
        return option == .bio
    }
    
    var shouldHideTextView: Bool {
        return option != .bio
    }
    
    var shouldHidePlaceholderLabel: Bool {
        return user.bio != nil
    }
    
    init(user: User, option: EditProfileOptions) {
        self.user = user
        self.option = option
    }
}

