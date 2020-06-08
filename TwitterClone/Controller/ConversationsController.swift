//
//  ConversationsController.swift
//  TwitterClone
//
//  Created by Alan Cao on 4/21/20.
//  Copyright © 2020 Alan Cao. All rights reserved.
//

import UIKit

class ConversationsController: UIViewController {

    // MARK: - Properties
    
    // MARK: - LifeCycles

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    // MARK: - Helpers
    func configureUI() {
        view.backgroundColor = .white
        
        navigationItem.title = "Messages"
    }
}
