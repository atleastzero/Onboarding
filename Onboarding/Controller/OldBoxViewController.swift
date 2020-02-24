//
//  OldBoxViewController.swift
//  Onboarding
//
//  Created by Megan OBryan on 2/23/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

class OldBoxViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let monthArray = ["February 2020", "January 2020", "December 2019"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return monthArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MonthCell", for: indexPath) as! MonthCell
        cell.monthButton.setTitle(monthArray[indexPath.row], for: .normal)
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
        
        view.addSubview(table)
        setupTableView()
        
    }
    
    func setupTableView() {
        table.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        table.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        table.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
        table.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor).isActive = true
        table.delegate = self
        table.dataSource = self
    }

    @objc func goToBox() {
    self.navigationController?.pushViewController(MonthViewController(), animated: true)
    }
}
