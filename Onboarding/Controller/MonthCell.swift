//
//  monthCell.swift
//  Onboarding
//
//  Created by Megan OBryan on 2/23/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

class MonthCell: UITableViewCell {
    let monthButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.backgroundColor = .white
        return button
    }()
    
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
        monthButton.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10).isActive = true
        monthButton.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        monthButton.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        monthButton.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
    }
}
