//
//  deliverablesTableViewCell.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 16/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

class deliverablesTableViewCell: UITableViewCell {

    static let cellID = "deliverablesTableViewCell"
    @IBOutlet weak var journeyDeliverablesLabel: UILabel!
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
        var mergeDeliverables: String = ""
        for index in 1...journeyCell.journeyDeliverables.count {
            mergeDeliverables += "\(journeyCell.journeyDeliverables[index-1])\n"
        }
        journeyDeliverablesLabel.text = mergeDeliverables

    }

    
}
