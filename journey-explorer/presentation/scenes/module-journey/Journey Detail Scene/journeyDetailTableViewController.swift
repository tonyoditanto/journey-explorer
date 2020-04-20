//
//  journeyDetailTableViewController.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 20/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

class journeyDetailTableViewController: UITableViewController {
    
    let sectionTitles = ["Thumbnail", "Description", "Learning Goals", "Constraints", "Deliverables"]
    
//    @IBOutlet weak var tableView: UITableView!
    var journey : Journey!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: - Set Navigation Bar Transparan
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
//        self.navigationController?.navigationBar.shadowImage = UIImage()
//        self.navigationController?.navigationBar.isTranslucent = true
//        self.navigationController?.view.backgroundColor = .clear
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 164
        //tableView.contentInset = UIEdgeInsets.init(top: <#T##CGFloat#>, left: <#T##CGFloat#>, bottom: <#T##CGFloat#>, right: <#T##CGFloat#>)
        setTableViewContentInsetToCustom()
        setupTableView()

    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    // MARK: - Dismiss Detail Journey Modal
    @IBAction func closeDetailJourney(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
}

extension journeyDetailTableViewController {
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitles.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = makeHeaderView(at: section)
        let headerViewLabel = makeHeaderViewLabel(at: section)
        headerView.addSubview(headerViewLabel)
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == JourneyDetailSection.SECTION_THUMBNAIL {
            return 0
        }
        if section == JourneyDetailSection.SECTION_DESCRIPTION {
            return 0
        }
        return 20
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == JourneyDetailSection.SECTION_THUMBNAIL {
            return 460
        }
        
        return UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = indexPath.section
        
        if section == JourneyDetailSection.SECTION_THUMBNAIL {
            return makeThumbnailCell(at: indexPath)
        }
        if section == JourneyDetailSection.SECTION_DESCRIPTION {
            return makeDescriptionCell(at: indexPath)
        }
        if section == JourneyDetailSection.SECTION_LEARNING_GOALS {
            return makeLearningGoalsCell(at: indexPath)
        }
        if section == JourneyDetailSection.SECTION_CONSTRAINTS {
            return makeConstraintsCell(at: indexPath)
        }
        if section == JourneyDetailSection.SECTION_DELIVERABLES {
            return makeDeliverablesCell(at: indexPath)
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }

    
    func setupTableView() {
//        print(journey.journeyTitle)
//        print(thumbnailTableViewCell.cellID)
        registerThumbnailCell()
        registerDescriptionCell()
        registerLearningGoalsCell()
        registerConstraintsCell()
        registerDeliverablesCell()
    }
    
    func registerThumbnailCell() {
        let nib = UINib(nibName: thumbnailTableViewCell.cellID, bundle: Bundle.main)
        //tableView.register(nib, forCellReuseIdentifier: thumbnailTableViewCell.cellID)
        tableView.register(nib, forCellReuseIdentifier: thumbnailTableViewCell.cellID)

    }
    
    func registerDescriptionCell() {
        let nib = UINib(nibName: descriptionTableViewCell.cellID, bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: descriptionTableViewCell.cellID)
    }
    
    func registerLearningGoalsCell() {
        let nib = UINib(nibName: learningGoalsTableViewCell.cellID, bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: learningGoalsTableViewCell.cellID)
    }
    
    func registerConstraintsCell() {
        let nib = UINib(nibName: constraintsTableViewCell.cellID, bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: constraintsTableViewCell.cellID)
        
    }
    
    func registerDeliverablesCell() {
        let nib = UINib(nibName: deliverablesTableViewCell.cellID, bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: deliverablesTableViewCell.cellID)
    }
    
    func makeThumbnailCell(at indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: thumbnailTableViewCell.cellID, for: indexPath) as! thumbnailTableViewCell
        
//        cell.configureCell(ImageView: sendDataJourneyImageview, Title: sendDataJourneyTitle, Duration: sendDataJourneyDuration, Team: sendDataJourneyTeam)
        cell.journeyCell = self.journey
        cell.delegate = self
        return cell
    }

    func makeDescriptionCell(at indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: descriptionTableViewCell.cellID, for: indexPath) as! descriptionTableViewCell
//        cell.configureCell(Description: description)
        cell.journeyCell = self.journey
        return cell
    }
    
    func makeLearningGoalsCell(at indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: learningGoalsTableViewCell.cellID, for: indexPath) as! learningGoalsTableViewCell
//        cell.configureCell(LearningGoals: sendDataJourneyLearningGoals)
        cell.journeyCell = self.journey
        return cell
    }
    
    func makeConstraintsCell(at indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: constraintsTableViewCell.cellID, for: indexPath) as! constraintsTableViewCell
//        cell.configureCell(Constraints : sendDataJourneyConstraints)
        cell.journeyCell = self.journey
        return cell
    }
    
    func makeDeliverablesCell(at indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: deliverablesTableViewCell.cellID, for: indexPath) as! deliverablesTableViewCell
//        cell.configureCell(Deliverables : sendDataJourneyDeliverables)
        cell.journeyCell = self.journey
        return cell
    }

    func makeHeaderView(at section: Int) -> UIView {
        let frame = CGRect(x: 0, y: 0, width: tableView.frame.width, height: 50)
        let view = UIView(frame: frame)
        view.backgroundColor = .clear
        view.backgroundColor = makeTableHeaderViewColor(at: section)
        return view
    }
    
    func makeHeaderViewLabel(at section: Int) -> UILabel {
        let frame = CGRect(x: 16, y: 8, width: tableView.frame.width, height: 30)
        let label = UILabel(frame: frame)
        label.text = sectionTitles[section]
        
        label.textColor = makeTableHeaderTintColor(at: section)
        label.font = makeHeaderViewFont()
        
        return label
    }
    
    func makeHeaderViewFont() -> UIFont {
        var font = UIFont.systemFont(ofSize: 22)
        if let newDescriptor = font.fontDescriptor.withSymbolicTraits(.traitBold) {
            font = UIFont(descriptor: newDescriptor, size: font.pointSize)
        }
        return font
    }
    
    func makeTableHeaderViewColor(at section: Int) -> UIColor {
        return .white
    }
    
    func makeTableHeaderTintColor(at section: Int) -> UIColor {
        return .black
    }
    
    

}

extension journeyDetailTableViewController{
    
     fileprivate func setTableViewContentInsetToCustom() {
          tableView.contentInset = UIEdgeInsets(top: -getStatusBarHeight(), left: 0, bottom: 0, right: 0)
      }


     internal func getTopInsetHeight() -> CGFloat {
          guard let navBarHeight = getNavBarHeight() else { return 0 }
          return getStatusBarHeight() + navBarHeight
      }
      
      private func getStatusBarHeight() -> CGFloat {
          let statusBarSize = UIApplication.shared.statusBarFrame.size
          return Swift.min(statusBarSize.width, statusBarSize.height)
      }
      
      internal func getNavBarHeight() -> CGFloat? {
          return navigationController?.navigationBar.frame.size.height
      }}

extension journeyDetailTableViewController : ThumbnailTableViewCellDelegate{
    func closeButton() {
        dismiss(animated: true, completion: nil)
    }
}

