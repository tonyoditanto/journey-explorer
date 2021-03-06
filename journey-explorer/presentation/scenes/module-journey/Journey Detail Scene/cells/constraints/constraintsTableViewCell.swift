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
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
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
