//
//  ItemCell.swift
//  Onboarding
//
//  Created by Megan OBryan on 3/4/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    
    var favoriteButton: UIButton! = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.backgroundColor = .yellow
        return button
    }()
    
    var itemLabel: UILabel! = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.layer.masksToBounds = true
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    
    func setup() {
        self.contentView.addSubview(favoriteButton)
        favoriteButton.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        favoriteButton.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        favoriteButton.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        favoriteButton.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true

        self.contentView.addSubview(itemLabel)
        itemLabel.centerYAnchor.constraint(equalToSystemSpacingBelow: self.contentView.centerYAnchor, multiplier: 1.0).isActive = true
        itemLabel.centerXAnchor.constraint(equalToSystemSpacingAfter: self.contentView.centerXAnchor, multiplier: 1.0).isActive = true
    }
}
