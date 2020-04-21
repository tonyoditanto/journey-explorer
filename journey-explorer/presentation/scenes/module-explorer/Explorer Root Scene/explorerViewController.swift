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
        //searchController.searchBar.scopeButtonTitles = ["All","Tech", "Design", "Others"]
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
                let seniorTechExplorers = seniorExplorers.filter { return $0.explorerRole == .codingFacilitator}
                return seniorTechExplorers.count
            case .design:
                let seniorDesignExplorers = seniorExplorers.filter { return $0.explorerRole == .designFacilitator}
                return seniorDesignExplorers.count
            case .other:
                let seniorOtherExplorers = seniorExplorers.filter { return $0.explorerRole == .professionalFacilitator || $0.explorerRole == .academyManager }
                return seniorOtherExplorers.count
            case .all: return seniorExplorers.count

            default:
                return seniorExplorers.count
            }
        }
        
        if selectedSegmentType == .junior {
            let juniorExplorers = explorers.filter { return $0.explorerType == .junior }
            
            switch selectedActionSheetRole {
            case .tech:
                let juniorTechExplorers = juniorExplorers.filter { return $0.explorerRole == .tech}
                return juniorTechExplorers.count
            case .design:
                let juniorDesignExplorers = juniorExplorers.filter { return $0.explorerRole == .design}
                return juniorDesignExplorers.count
            case .other:
                let juniorOtherExplorers = juniorExplorers.filter { return $0.explorerRole == .other}
                return juniorOtherExplorers.count
            case .all: return juniorExplorers.count
                
            default:
                return juniorExplorers.count
            }
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
        if selectedSegmentType == .senior{
            filteredExplorers = getExplorers(forType: .senior, forRole: selectedActionSheetRole)
        }
        
        if selectedSegmentType == .junior{
            filteredExplorers = getExplorers(forType: .junior, forRole: selectedActionSheetRole)
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
        //scopeControlDidTap(for: searchController)
        print(text)
    }
    
    func scopeControlDidTap(for searchController: UISearchController){
//        selectedScopeIndex = searchController.searchBar.selectedScopeButtonIndex
//
//        switch selectedScopeIndex {
//        case 0: selectedScopeRole = .all
//        case 1: selectedScopeRole = .tech
//        case 2: selectedScopeRole = .design
//        case 3: selectedScopeRole = .other
//        default: selectedSegmentType = .senior
//        }
//        collectionView.reloadData()
    }
    
}
