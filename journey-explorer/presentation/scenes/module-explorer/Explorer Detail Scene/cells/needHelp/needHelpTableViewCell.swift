//
//  needHelpTableViewCell.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 20/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

class needHelpTableViewCell: UITableViewCell {
    
    static let cellID = "needHelpTableViewCell"
    @IBOutlet weak var explorerWantToLearnLabel: UILabel!
    
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
        var mergeWantToLearn: String = ""
        for index in 1...explorer.explorerWantToLearn.count {
            mergeWantToLearn += "\(explorer.explorerWantToLearn[index-1])\n"
        }
        self.explorerWantToLearnLabel.text = mergeWantToLearn

    }
    
}
