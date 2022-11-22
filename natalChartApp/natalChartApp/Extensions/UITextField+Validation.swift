//
//  UITextField+Validation.swift
//  natalChartApp
//
//  Created by Güney Berkay  on 27.09.2022.
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
