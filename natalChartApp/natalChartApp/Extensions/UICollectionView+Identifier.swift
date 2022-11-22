//
//  UICollectionView+Identifier.swift
//  natalChartApp
//
//  Created by Güney Berkay  on 27.09.2022.
//

import UIKit
extension UICollectionViewCell{
    static var cellId: String {
        String(describing: self)
    }
}
