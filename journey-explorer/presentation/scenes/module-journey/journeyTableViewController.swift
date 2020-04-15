//
//  journeyTableViewController.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 15/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

class journeyTableViewController: UITableViewController {

        var journeys = [Journey]()
        override func viewDidLoad() {
            super.viewDidLoad()
            fetchJourneys()
        }

        func fetchJourneys(){
            let repository = JourneyRepository()
            journeys = repository.fetchJourneys()
        }
        
        override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 1
        }
        
        override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return UITableView.automaticDimension
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "journeyTableViewCell", for: indexPath) as! journeyTableViewCell
                return cell
            }
            return UITableViewCell()
        }
        
        override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
            if indexPath.row == 0 {
                if let cell = cell as? journeyTableViewCell {
                    cell.journeyCollectionView.dataSource = self
                    cell.journeyCollectionView.reloadData()
                }
            }
        }
        
    }

    extension journeyTableViewController : UICollectionViewDataSource
    {
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 4
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "journeyCollectionViewCell", for: indexPath) as! journeyCollectionViewCell

            let journey = journeys[indexPath.row]
            cell.journeyCell = journey
            return cell
        }
        
    }
