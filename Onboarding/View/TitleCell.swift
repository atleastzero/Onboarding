//
//  TitleCell.swift
//  Onboarding
//
//  Created by Megan OBryan on 2/24/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

class TitleCell: UICollectionViewCell {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        return label
    }()
    
    init(title: String) {
        super.init(frame: .zero)
        titleLabel.text = title
        contentView.addSubview(titleLabel)
        
        titleLabel.topAnchor.constraint(equalToSystemSpacingBelow: contentView.topAnchor, multiplier: 1.0).isActive = true
        titleLabel.bottomAnchor.constraint(equalToSystemSpacingBelow: contentView.bottomAnchor, multiplier: 1.0).isActive = true
        titleLabel.leftAnchor.constraint(equalToSystemSpacingAfter: contentView.leftAnchor, multiplier: 1.0).isActive = true
        titleLabel.rightAnchor.constraint(equalToSystemSpacingAfter: contentView.rightAnchor, multiplier: 1.0).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(title: String) {
        titleLabel.text = title
    }
}
