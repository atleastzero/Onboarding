//
//  Section.swift
//  Onboarding
//
//  Created by Megan OBryan on 2/24/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

protocol Section {
    var numberOfItems: Int { get }
    func layoutSection() -> NSCollectionLayoutSection?
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell
}
