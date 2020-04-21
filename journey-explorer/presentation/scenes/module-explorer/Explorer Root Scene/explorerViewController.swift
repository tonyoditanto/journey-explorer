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
    
    var searchText = ""
    var filteredExplorers = [Explorer]()
    var explorers = [Explorer]()
    var selectedSegmentIndex = 0
    var selectedActionSheetIndex = 0
    var selectedSegmentType: explorerViewControllerCellType = .senior
    var selectedActionSheetRole: explorerViewControllerCellRole = .all
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
    
    @IBAction func filterButtonDidTap(_ sender: Any) {
        showFilterExplorerRoleActionSheet()
    }
    
}

// MARK: UIAlertController
extension explorerViewController{
    
    func showFilterExplorerRoleActionSheet() {
        present(makeFilterExplorerRoleActionSheetController(), animated: true, completion: nil)
    }
    
    func makeFilterExplorerRoleActionSheetController() -> UIAlertController {
        let alertController = UIAlertController(title: "Filter by Role", message: "Please Select an Option", preferredStyle: .actionSheet)
        alertController.addAction(UIAlertAction(title: "Tech", style: .default, handler: { (_) in
            let selectedIndex = 0
            self.setSelectedActionSheetIndex(with : selectedIndex)
            print("User click Tech button \(selectedIndex)")
        }))

        alertController.addAction(UIAlertAction(title: "Design", style: .default, handler: { (_) in
            let selectedIndex = 1
            self.setSelectedActionSheetIndex(with : selectedIndex)
            print("User click Design button \(selectedIndex)")
        }))

        alertController.addAction(UIAlertAction(title: "Other", style: .default, handler: { (_) in
            let selectedIndex = 2
            self.setSelectedActionSheetIndex(with : selectedIndex)
            print("User click Other button \(selectedIndex)")
        }))
        
        alertController.addAction(UIAlertAction(title: "All", style: .default, handler: { (_) in
            let selectedIndex = 3
            self.setSelectedActionSheetIndex(with : selectedIndex)
            print("User click All button \(selectedIndex)")
        }))

        alertController.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { (_) in
            print("User click Dismiss button")
        }))
        
        
        return alertController
    }
    
    func setSelectedActionSheetIndex(with selectedIndex : Int){
        selectedActionSheetIndex = selectedIndex
        switch selectedActionSheetIndex {
        case 0: selectedActionSheetRole = .tech
        case 1: selectedActionSheetRole = .design
        case 2: selectedActionSheetRole = .other
        case 3: selectedActionSheetRole = .all
        default: selectedActionSheetRole = .all
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
            
            switch selectedActionSheetRole {
            case .tech:
                if searchText.isEmpty == true {
                    let seniorTechExplorers = seniorExplorers.filter {
                        return $0.explorerRole == .codingFacilitator
                    }
                    return seniorTechExplorers.count
                }
                if searchText.isEmpty == false {
                    let seniorTechExplorers = seniorExplorers.filter {
                        return $0.explorerRole == .codingFacilitator && $0.explorerName.lowercased().contains(searchText)
                    }
                    return seniorTechExplorers.count
                }
            case .design:
                if searchText.isEmpty == true {
                    let seniorDesignExplorers = seniorExplorers.filter {
                        return $0.explorerRole == .designFacilitator
                    }
                    return seniorDesignExplorers.count
                }
                if searchText.isEmpty == false {
                    let seniorDesignExplorers = seniorExplorers.filter {
                        return $0.explorerRole == .designFacilitator && $0.explorerName.lowercased().contains(searchText)
                    }
                    return seniorDesignExplorers.count
                }
            case .other:
                if searchText.isEmpty == true {
                    let seniorOtherExplorers = seniorExplorers.filter {
                        return $0.explorerRole == .professionalFacilitator || $0.explorerRole == .academyManager
                    }
                    return seniorOtherExplorers.count
                }
                if searchText.isEmpty == false {
                    let seniorOtherExplorers = seniorExplorers.filter {
                        return ($0.explorerRole == .professionalFacilitator || $0.explorerRole == .academyManager) && $0.explorerName.lowercased().contains(searchText)
                    }
                    return seniorOtherExplorers.count
                }
                
            case .all:
                if searchText.isEmpty == true {
                    let seniorAllExplorer = seniorExplorers
                    return seniorAllExplorer.count
                }
                if searchText.isEmpty == false {
                    let seniorAllExplorers = seniorExplorers.filter{
                        return $0.explorerName.lowercased().contains(searchText)
                    }
                    return seniorAllExplorers.count
                }

            default:
                return seniorExplorers.count
            }
        }
        
        if selectedSegmentType == .junior {
            let juniorExplorers = explorers.filter { return $0.explorerType == .junior }
            
            switch selectedActionSheetRole {
            case .tech:
                if searchText.isEmpty == true {
                    let juniorTechExplorers = juniorExplorers.filter {
                        return $0.explorerRole == .tech
                    }
                    return juniorTechExplorers.count
                }
                if searchText.isEmpty == false {
                    let juniorTechExplorers = juniorExplorers.filter {
                    return $0.explorerRole == .tech && $0.explorerName.lowercased().contains(searchText)
                    }
                    return juniorTechExplorers.count
                }
                
            case .design:
                if searchText.isEmpty == true {
                    let juniorDesignExplorers = juniorExplorers.filter {
                        return $0.explorerRole == .design
                    }
                    return juniorDesignExplorers.count
                }
                if searchText.isEmpty == false {
                    let juniorDesignExplorers = juniorExplorers.filter {
                    return $0.explorerRole == .design && $0.explorerName.lowercased().contains(searchText)
                    }
                    return juniorDesignExplorers.count
                }
            case .other:
                if searchText.isEmpty == true {
                    let juniorOtherExplorers = juniorExplorers.filter {
                        return $0.explorerRole == .other
                    }
                    return juniorOtherExplorers.count
                }
                if searchText.isEmpty == false {
                    let juniorOtherExplorers = juniorExplorers.filter {
                    return $0.explorerRole == .other && $0.explorerName.lowercased().contains(searchText)
                    }
                    return juniorOtherExplorers.count
                }
                
            case .all:
                if searchText.isEmpty == true {
                    let juniorAllExplorer = juniorExplorers
                    return juniorAllExplorer.count
                }
                if searchText.isEmpty == false {
                    let juniorAllExplorers = juniorExplorers.filter{
                        return $0.explorerName.lowercased().contains(searchText)
                    }
                    return juniorAllExplorers.count
                }
                
            default:
                return juniorExplorers.count
            }
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: explorerCollectionViewCell.cellID, for: indexPath) as! explorerCollectionViewCell
        setFilteredExplorers()
        cell.explorer = filteredExplorers[indexPath.row]
        return cell
    }
    
    func setFilteredExplorers(){
        if selectedSegmentType == .senior{
            if searchText.isEmpty == true {
                filteredExplorers = getExplorers(forType: .senior, forRole: selectedActionSheetRole)
            }
            if searchText.isEmpty == false {
                filteredExplorers = getExplorers(forType: .senior, forRole: selectedActionSheetRole).filter { $0.explorerName.lowercased().contains(searchText) }
            }
        }
        
        if selectedSegmentType == .junior{
            if searchText.isEmpty == true {
                filteredExplorers = getExplorers(forType: .junior, forRole: selectedActionSheetRole)
            }
            if searchText.isEmpty == false {
                filteredExplorers = getExplorers(forType: .junior, forRole: selectedActionSheetRole).filter { $0.explorerName.lowercased().contains(searchText) }
            }
        }
    }
    
    func getExplorers(forType type: ExplorerType, forRole role: explorerViewControllerCellRole) -> [Explorer] {
            let filtereExplorers = explorers.filter { return $0.explorerType == type }
            switch selectedActionSheetRole {
            case .tech:
                if type == .senior{
                    return filtereExplorers.filter { $0.explorerRole == .codingFacilitator }
                }
                if type == .junior{
                    return filtereExplorers.filter { $0.explorerRole == .tech }
                }
            case .design:
                if type == .senior{
                    return filtereExplorers.filter { $0.explorerRole == .designFacilitator }
                }
                if type == .junior{
                    return filtereExplorers.filter { $0.explorerRole == .design }
                }
            case .other:
                if type == .senior{
                    return filtereExplorers.filter { $0.explorerRole == .professionalFacilitator || $0.explorerRole == .academyManager }
                }
                if type == .junior{
                    return filtereExplorers.filter { $0.explorerRole == .other }
                }
            case .all:
                return filtereExplorers
            default:
                filtereExplorers
            }
        return filtereExplorers
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
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
        // Get search text
        let searchText: String = searchController.searchBar.text?.lowercased() ?? ""
        self.searchText = searchText
        //print(searchText)
        collectionView.reloadData()
    }
}
