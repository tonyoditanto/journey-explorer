//
//  exploreViewController.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 20/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

enum explorerViewControllerCellType: String {
    case senior
    case junior
}

enum explorerViewControllerCellRole: String {
    case all = "All"
    case tech = "Tech"
    case design = "Design"
    case other = "Other"
}

class explorerViewController: UIViewController {
    
    var filteredExplorers = [Explorer]()
    var explorers = [Explorer]()
    var selectedSegmentIndex = 0
    var selectedScopeIndex = 0
    var selectedSegmentType: explorerViewControllerCellType = .senior
    var selectedScopeRole: explorerViewControllerCellRole = .all
    let searchController = UISearchController(searchResultsController: nil)
    
    @IBOutlet weak var collectionView: UICollectionView!
    var selectedExplorer : Explorer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchExplorers()
        setupSearchController()
        setupCollectionView()

    }
    
    // MARK: - Fetch Explorer Data
    func fetchExplorers(){
        let repository = ExplorerRepository()
        explorers = repository.fetchExplorers()
    }
    
    // MARK: - Set Search Controller w/ Scope
    func setupSearchController(){
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search"
        searchController.searchBar.scopeButtonTitles = ["All","Tech", "Design", "Others"]
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    // MARK: - Delegate Collection View and Register XIB collectionViewCell
    func setupCollectionView(){
        registerCollectionView()
    }
    
    func registerCollectionView(){
        let nib = UINib(nibName: explorerCollectionViewCell.cellID, bundle: Bundle.main)
        self.collectionView.register(nib, forCellWithReuseIdentifier: explorerCollectionViewCell.cellID)
    }
    
    @IBAction func segmentedControlDidTap(_ sender: UISegmentedControl) {
        selectedSegmentIndex = sender.selectedSegmentIndex
        switch selectedSegmentIndex {
        case 0: selectedSegmentType = .senior
        case 1: selectedSegmentType = .junior
        default: selectedSegmentType = .senior
        }
        collectionView.reloadData()
    }
    
}

// MARK: UICollectionViewDataSource
extension explorerViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if selectedSegmentType == .senior {
            let seniorExplorers = explorers.filter { return $0.explorerType == .senior }
                return seniorExplorers.count
            }
        
        if selectedSegmentType == .junior {
            let juniorExplorers = explorers.filter { return $0.explorerType == .junior }
            return juniorExplorers.count
        }
        
        return 0
        //return explorers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: explorerCollectionViewCell.cellID, for: indexPath) as! explorerCollectionViewCell
        
        setFilteredExplorers()
        
        cell.explorer = filteredExplorers[indexPath.row]
        return cell
    }
    
    func setFilteredExplorers(){
        if selectedSegmentType == .senior {
            filteredExplorers = getExplorers(forType: .senior)
        }
        
        if selectedSegmentType == .junior {
            filteredExplorers = getExplorers(forType: .junior)
        }
    }
    
    func getExplorers(forType type: ExplorerType) -> [Explorer] {
        return explorers.filter { $0.explorerType == type }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
//        selectedExplorer = explorers[indexPath.row]
        selectedExplorer = self.filteredExplorers[indexPath.row]
        performSegue(withIdentifier: "showExplorerDetail", sender: indexPath)
    }
    
    // MARK: - Sent Data to other ViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showExplorerDetail" {
            let destination = segue.destination as! explorerDetailTableViewController
            destination.explorers = self.explorers
            destination.explorer = selectedExplorer
            
        }
    }

}

extension explorerViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        scopeControlDidTap(for: searchController)
        print(selectedScopeIndex)
    }
    
    func scopeControlDidTap(for searchController: UISearchController){
        selectedScopeIndex = searchController.searchBar.selectedScopeButtonIndex

        switch selectedScopeIndex {
        case 0: selectedScopeRole = .all
        case 1: selectedScopeRole = .tech
        case 2: selectedScopeRole = .design
        case 3: selectedScopeRole = .other
        default: selectedSegmentType = .senior
        }
        collectionView.reloadData()
    }
    
}
