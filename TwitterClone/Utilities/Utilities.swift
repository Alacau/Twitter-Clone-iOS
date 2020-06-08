//
//  Utilities.swift
//  TwitterClone
//
//  Created by Alan Cao on 4/21/20.
//  Copyright © 2020 Alan Cao. All rights reserved.
//

import UIKit

class Utilities {
    func inputContainerView(withImage image: UIImage, textField: UITextField) -> UIView {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true

        let imageView = UIImageView()
        imageView.image = image
        
        view.addSubview(imageView)
        imageView.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, paddingLeft: 8, paddingBottom: 8)
        imageView.setDimensions(width: 24, height: 24)
        
        view.addSubview(textField)
        textField.anchor(left: imageView.rightAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 8, paddingBottom: 8)
        
        let dividerView = UIView()
        dividerView.backgroundColor = .white
        view.addSubview(dividerView)
        dividerView.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 8, height: 0.75)
        
        return view
    }
    
    func textField(withPlaceholder placeholder: String) -> UITextField {
        let textField = UITextField()
        textField.textColor = .white
        textField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor : UIColor.white])
        
        return textField
    }
    
    func attributedButton(_ firstPart: String, _ secondPart: String) -> UIButton {
        let button = UIButton(type: .system)
        let attributedTitle = NSMutableAttributedString(string: firstPart, attributes: [.font : UIFont.systemFont(ofSize: 16), .foregroundColor : UIColor.white])
        attributedTitle.append(NSAttributedString(string: secondPart, attributes: [.font : UIFont.boldSystemFont(ofSize: 16), .foregroundColor : UIColor.white]))
        button.setAttributedTitle(attributedTitle, for: .normal)
        
        return button
    }
}
