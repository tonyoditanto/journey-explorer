//
//  canHelpSimilarTableViewCell.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 22/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

class canHelpSimilarTableViewCell: UITableViewCell {

        
    static let cellID = "canHelpSimilarTableViewCell"
    @IBOutlet weak var exploreCanHelpWithLabel: UILabel!
    
    var explorer: Explorer!{
        didSet{
            configureCell()
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell() {
        configureLabel()
    }
    
    func configureLabel(){
        var mergeCanHelpWith: String = ""
        for index in 1...explorer.explorerCanHelpWith.count {
            mergeCanHelpWith += "\(explorer.explorerCanHelpWith[index-1])\n"
        }
        self.exploreCanHelpWithLabel.text = mergeCanHelpWith

    }
    
}
