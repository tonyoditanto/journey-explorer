//
//  photoSimilarTableViewCell.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 22/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

class photoSimilarTableViewCell: UITableViewCell {

    @IBOutlet weak var exploreImageView: UIImageView!
    @IBOutlet weak var swipeDownBar: UIImageView!
    static let cellID = "photoSimilarTableViewCell"
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
        configureImage()
    }
    
    func configureImage(){
        self.exploreImageView.image = UIImage(named: explorer.explorerImageName)
        self.swipeDownBar.layer.cornerRadius = 5
    }
    
}
