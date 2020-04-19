//
//  constraintsTableViewCell.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 16/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

class constraintsTableViewCell: UITableViewCell {

    static let cellID = "constraintsTableViewCell"
    @IBOutlet weak var journeyConstraintsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    var journey: Journey!{
//        didSet{
//            configureCell()
//        }
//    }
//
//    func configureCell(Constraints journeyConstraints : [String]) {
//        configureLabel(Constraints : journeyConstraints)
//    }
//
//    func configureLabel(Constraints journeyConstraints : [String]){
//        var mergeConstraints: String = ""
//        for index in 1...journeyConstraints.count {
//            mergeConstraints += "\(journeyConstraints[index])\n"
//        }
//        journeyConstraintsLabel.text = mergeConstraints
//
//    }
    
    var journeyCell: Journey!{
        didSet{
            configureCell()
        }
    }
    
    func configureCell() {
        configureLabel()
    }
    
    func configureLabel(){
        var mergeConstraints: String = ""
        for index in 1...journeyCell.journeyConstraints.count {
            mergeConstraints += "\(journeyCell.journeyConstraints[index-1])\n"
        }
        journeyConstraintsLabel.text = mergeConstraints

    }
}
