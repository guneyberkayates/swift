//
//  formCompositionalLayout.swift
//  ProtocolOrientedUIKit
//
//  Created by Güney Berkay  on 25.09.2022.
//

import UIKit

final class formCompositionalLayout{
    var layout: UICollectionViewCompositionalLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(44))
        let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
        layoutItem.edgeSpacing = NSCollectionLayoutEdgeSpacing(leading: nil,
                                                               top: .fixed(8),
                                                               trailing: nil,
                                                               bottom: .fixed(8))
        
        let layoutGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(44))
        let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: layoutGroupSize, subitem: layoutItem,count: 1)
        
        layoutGroup.contentInsets = .init(top : 0, leading :8, bottom:0,trailing:8)
        
        let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
        layoutSection.contentInsets = .init(top:150,leading :0 ,bottom : 0, trailing :0)
        let compLayout = UICollectionViewCompositionalLayout(section: layoutSection)
        return compLayout
    }
}
