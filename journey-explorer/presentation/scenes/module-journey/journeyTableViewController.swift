//
//  journeyTableViewController.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 15/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

class journeyTableViewController: UITableViewController {

    @IBOutlet var journeyTableView: UITableView!
    
    var journeys = [Journey]()
    var searchTextField: UITextField?
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSearchController()
        fetchJourneys()
    }

    func fetchJourneys(){
        let repository = JourneyRepository()
        journeys = repository.fetchJourneys()
    }
    
    func setupSearchController() {
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search"
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    
        
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return journeys.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 496
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let journey = journeys[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "journeyTableViewCell") as! journeyTableViewCell
        
        cell.journeyCell = journey
        if indexPath.row == 3{
            cell.journeyImageView.contentMode = UIView.ContentMode.scaleAspectFill
        }
        
    return cell
    }
        
}

extension journeyTableViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        print(text)
    }
    
}
