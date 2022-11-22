//
//  UICollectionView+CleanUp.swift
//  natalChartApp
//
//  Created by Güney Berkay  on 27.09.2022.
//

import UIKit
extension UICollectionViewCell {
    func removeViews(){
        contentView.subviews.forEach {
            $0.removeFromSuperview()
        }
    }
}
