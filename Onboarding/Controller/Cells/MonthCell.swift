//
//  MonthCell.swift
//  Onboarding
//
//  Created by Megan OBryan on 3/2/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

class MonthCell: UITableViewCell {
    
    var monthButton: UIButton! = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.backgroundColor = .white
        return button
    }()
    
    var monthLabel: UILabel! = {
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
        self.contentView.addSubview(monthButton)
        monthButton.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        monthButton.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        monthButton.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        monthButton.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true

        self.contentView.addSubview(monthLabel)
        monthLabel.centerYAnchor.constraint(equalToSystemSpacingBelow: self.contentView.centerYAnchor, multiplier: 1.0).isActive = true
        monthLabel.centerXAnchor.constraint(equalToSystemSpacingAfter: self.contentView.centerXAnchor, multiplier: 1.0).isActive = true
    }
}
