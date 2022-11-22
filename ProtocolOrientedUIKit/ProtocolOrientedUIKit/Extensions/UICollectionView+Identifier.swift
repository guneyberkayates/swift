//
//  UICollectionView+Identifier.swift
//  ProtocolOrientedUIKit
//
//  Created by Güney Berkay  on 25.09.2022.
//

import UIKit

extension UICollectionViewCell{
    static var cellId: String {
        String(describing: self)
    }
}
