//
//  MonthViewController.swift
//  Onboarding
//
//  Created by Megan OBryan on 2/23/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

//class MonthViewController: UIViewController {
class MonthViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var box: Box?
    
    convenience init(_ passed_box: Box) {
        self.init(nibName:nil, bundle:nil)
        box = passed_box
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return box!.items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell
        cell.itemLabel.text = "\(box!.items[indexPath.row].name)"
        return cell
    }

    func tableView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        let cell = tableView(table, cellForRowAt: indexPath) as! ItemCell
        if cell.isSelected == true {
            collectionView.deselectItem(at: indexPath, animated: false)
            collectionView.delegate?.collectionView?(collectionView, didDeselectItemAt: indexPath)
            cell.favoriteButton.backgroundColor = UIColor.yellow
            return false
        }
        cell.favoriteButton.backgroundColor = UIColor.white
        return true
    }

    
    let table: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.rowHeight = 100
        table.register(ItemCell.self, forCellReuseIdentifier: "ItemCell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        navigationItem.title = "Month"
        
        view.backgroundColor = .blue
        
        setupTableView()
    }
    
    func setupTableView() {
        view.addSubview(table)
        table.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        table.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        table.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
        table.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor).isActive = true
        table.delegate = self
        table.dataSource = self
    }
}

