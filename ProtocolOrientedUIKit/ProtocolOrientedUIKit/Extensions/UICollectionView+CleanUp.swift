//
//  UICollectionView+CleanUp.swift
//  ProtocolOrientedUIKit
//
//  Created by Güney Berkay  on 25.09.2022.
//

import UIKit

extension UICollectionViewCell {
    func removeViews(){
        contentView.subviews.forEach {
            $0.removeFromSuperview()
        }
    }
}
