//
//  descriptionTableViewCell.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 16/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

class descriptionTableViewCell: UITableViewCell {

    static let cellID = "descriptionTableViewCell"
    static let cellHeight: CGFloat = 164
    @IBOutlet weak var journeyDescriptionLabel: UILabel!
    
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
            journeyDescriptionLabel.text = journeyCell.journeyDescription

        }
    
}
