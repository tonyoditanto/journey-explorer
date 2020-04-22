//
//  profileSimilarTableViewCell.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 22/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

class profileSimilarTableViewCell: UITableViewCell {
    
    static let cellID = "profileSimilarTableViewCell"
    @IBOutlet weak var explorerNameLabel: UILabel!
    @IBOutlet weak var explorerSubtitle: UILabel!
    
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
    
    func configureCell(){
        configureLabel()
    }
    
    func configureLabel(){
        self.explorerNameLabel.text = explorer.explorerName
        self.explorerSubtitle.text = "\(explorer.explorerType.rawValue) - \(explorer.explorerRole.rawValue)"
    }
}
