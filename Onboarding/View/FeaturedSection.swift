//
//  FeaturedSection.swift
//  Onboarding
//
//  Created by Megan OBryan on 2/29/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

struct FeaturedSection: Section {
    let numberOfItems = 6
    
    func layoutSection() -> NSCollectionLayoutSection? {
        // TODO: Step 1
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        
        // TODO: Step 2
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        // T ODO:Step 3: Try using the absolute values, around 200 by 300
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(200), heightDimension: .absolute(300))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        // TODO: Step 5
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        
        return section
    }
    
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: FeaturedCell.self), for: indexPath)
    }
    
    
}
