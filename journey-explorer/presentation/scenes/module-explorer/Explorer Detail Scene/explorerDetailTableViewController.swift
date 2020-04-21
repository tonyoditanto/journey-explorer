//
//  explorerDetailTableViewController.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 20/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

class explorerDetailTableViewController: UITableViewController {
    
    var explorers = [Explorer]()
    var explorer: Explorer!
    let sectionTitles = ["photo", "profile", "Can Help With", "Need Help With", "Similar Role"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 150
        setupNavigationBar()
        setTableViewContentInsetToCustom()
        setupTableView()
    }
}

extension explorerDetailTableViewController{
    func setupNavigationBar(){
        // MARK: - Set Navigation Bar Transparan
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
    }
}

extension explorerDetailTableViewController {
    
       func setupTableView() {
            registerPhotoCell()
            registerProfileCell()
            registerCanHelpCell()
            registerNeedHelpCell()
            registerSimilarRoleCell()
        }
    
    func registerPhotoCell() {
        let nib = UINib(nibName: photoTableViewCell.cellID, bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: photoTableViewCell.cellID)

    }
    
    func registerProfileCell() {
        let nib = UINib(nibName: profileTableViewCell.cellID, bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: profileTableViewCell.cellID)
    }
    
    func registerCanHelpCell() {
        let nib = UINib(nibName: canHelpTableViewCell.cellID, bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: canHelpTableViewCell.cellID)
    }
    
    func registerNeedHelpCell() {
        let nib = UINib(nibName: needHelpTableViewCell.cellID, bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: needHelpTableViewCell.cellID)
        
    }
    
    func registerSimilarRoleCell() {
        let nib = UINib(nibName: similarRoleTableViewCell.cellID, bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: similarRoleTableViewCell.cellID)
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.sectionTitles.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == ExplorerDetailSection.SECTION_PHOTO {
            return 414
        }
        if indexPath.section == ExplorerDetailSection.SECTION_PROFILE {
            return 80
        }
        if indexPath.section == ExplorerDetailSection.SECTION_SIMILAR_ROLE {
            return 313
        }

        return tableView.estimatedRowHeight
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = indexPath.section
        
        if section == ExplorerDetailSection.SECTION_PHOTO {
            return makePhotoCell(at: indexPath)
        }
        if section == ExplorerDetailSection.SECTION_PROFILE {
            return makeProfileCell(at: indexPath)
        }
        if section == ExplorerDetailSection.SECTION_CAN_HELP {
            return makeCanHelpCell(at: indexPath)
        }
        if section == ExplorerDetailSection.SECTION_NEED_HELP {
            return makeNeedHelpCell(at: indexPath)
        }
        if section == ExplorerDetailSection.SECTION_SIMILAR_ROLE {
            return makeSimilarRoleCell(at: indexPath)
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    func makePhotoCell(at indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: photoTableViewCell.cellID, for: indexPath) as! photoTableViewCell
        cell.explorer = self.explorer
        return cell
    }

    func makeProfileCell(at indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: profileTableViewCell.cellID, for: indexPath) as! profileTableViewCell
        cell.explorer = self.explorer
        return cell
    }
    
    func makeCanHelpCell(at indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: canHelpTableViewCell.cellID, for: indexPath) as! canHelpTableViewCell
        cell.explorer = self.explorer
        return cell
    }
    
    func makeNeedHelpCell(at indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: needHelpTableViewCell.cellID, for: indexPath) as! needHelpTableViewCell
        cell.explorer = self.explorer
        return cell
    }
    
    func makeSimilarRoleCell(at indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: similarRoleTableViewCell.cellID, for: indexPath) as! similarRoleTableViewCell
        cell.explorer = self.explorer
        cell.explorers = self.explorers
        //cell.delegate = self
        return cell
    }
}

extension explorerDetailTableViewController{
    
     fileprivate func setTableViewContentInsetToCustom() {
          tableView.contentInset = UIEdgeInsets(top: -(getStatusBarHeight() + 100), left: 0, bottom: 0, right: 0)
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
      }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
