//
//  exploreViewController.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 20/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

class explorerViewController: UIViewController {
let searchController = UISearchController(searchResultsController: nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSearchController()
        // Do any additional setup after loading the view.
    }
    
    func setupSearchController(){
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search"
        searchController.searchBar.scopeButtonTitles = ["All","Tech", "Design", "Others"]
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    // MARK: UICollectionViewDataSource
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of items
//        return 0
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
//
//        // Configure the cell
//
//        return cell
//    }

}

extension explorerViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        print(text)
    }
    
}
