//
//  UITextField+Validation.swift
//  ProtocolOrientedUIKit
//
//  Created by Güney Berkay  on 26.09.2022.
//

import UIKit

extension UITextField {
    func valid() {
        self.layer.borderColor = UIColor.systemGreen.cgColor
    }
    
    func invalid() {
        self.layer.borderColor = UIColor.systemRed.cgColor
    }
}
