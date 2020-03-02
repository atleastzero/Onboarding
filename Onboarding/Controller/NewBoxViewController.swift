//
//  NewBoxViewController.swift
//  Onboarding
//
//  Created by Megan OBryan on 2/23/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

class NewBoxViewController: UIViewController {
    
    var collectionView: UICollectionView!
    
    lazy var sections: [Section] = [
        TitleSection(title: "Categories"),
        CategoriesSection(),
    ]
    
    lazy var collectionViewLayout: UICollectionViewLayout = {
        var sections = self.sections
        let layout = UICollectionViewCompositionalLayout { (sectionIndex, environment) -> NSCollectionLayoutSection? in
            return sections[sectionIndex].layoutSection()
        }
        return layout
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "New You"
        self.view.backgroundColor = UIColor.white
        setupCollectionView()
    }
    
    func setupCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: collectionViewLayout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = UIColor.white
       
        collectionView.register(UINib(nibName: "TitleCell", bundle: .main), forCellWithReuseIdentifier: TitleCell.identifier)
        collectionView.register(UINib(nibName: "GridCell", bundle: .main), forCellWithReuseIdentifier: GridCell.identifier)
        self.view.addSubview(collectionView)
        collectionView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        collectionView.reloadData()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        collectionView.reloadData()
    }
}

extension NewBoxViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        sections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        sections[section].numberOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        sections[indexPath.section].configureCell(collectionView: collectionView, indexPath: indexPath)
    }

    func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        let cell = collectionView.cellForItem(at: indexPath) as! GridCell
        if cell.isSelected == true {
            collectionView.deselectItem(at: indexPath, animated: false)
            collectionView.delegate?.collectionView?(collectionView, didDeselectItemAt: indexPath)
            cell.mainView.backgroundColor = UIColor.systemGray
            return false
        }
        cell.mainView.backgroundColor = UIColor.systemBlue
        return true
    }
}

extension NewBoxViewController: UICollectionViewDelegate {}

