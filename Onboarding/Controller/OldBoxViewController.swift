//
//  OldBoxViewController.swift
//  Onboarding
//
//  Created by Megan OBryan on 2/23/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

class OldBoxViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return boxes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MonthCell", for: indexPath) as! MonthCell
        cell.monthLabel.text = "\(boxes[indexPath.row].date)"
        cell.monthButton.tag = indexPath.row
        cell.monthButton.addTarget(self, action: #selector(goToBox), for: .touchUpInside)
        return cell
    }
    
    let table: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.rowHeight = 100
        table.register(MonthCell.self, forCellReuseIdentifier: "MonthCell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Old Boxes"
        
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

    @objc func goToBox(sender: UIButton) {
        let vc = MonthViewController(boxes[sender.tag])
        vc.title = boxes[sender.tag].date
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
