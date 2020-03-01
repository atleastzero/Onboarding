//
//  TitleCell.swift
//  Onboarding
//
//  Created by Megan OBryan on 2/27/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

class TitleCell: UICollectionViewCell {
    static var identifier: String = "TitleCell"
    @IBOutlet private var lblTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func set(title: String) {
        lblTitle.text = title
    }

}
