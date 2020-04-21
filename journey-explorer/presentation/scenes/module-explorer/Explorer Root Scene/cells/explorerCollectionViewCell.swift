//
//  explorerCollectionViewCell.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 17/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

class explorerCollectionViewCell: UICollectionViewCell {
    
    static let cellID = "explorerCollectionViewCell"
    @IBOutlet weak var exploreImageView: UIImageView!
    @IBOutlet weak var exploreNameLabel: UILabel!
    @IBOutlet weak var exploreRoleLabel: UILabel!
    var explorer: Explorer!{
        didSet{
            configureImage()
            configureLabel()
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureLabel(){
        exploreNameLabel.text = explorer.explorerName
        exploreRoleLabel.text = explorer.explorerRole.rawValue
    }
    
    func configureImage(){
        exploreImageView.image = UIImage(named: explorer.explorerImageName)
        exploreImageView.layer.cornerRadius = 10.0
        exploreImageView.layer.masksToBounds = true
        exploreImageView.layer.shadowColor = UIColor.black.cgColor
        exploreImageView.layer.shadowOpacity = 1
        exploreImageView.layer.shadowOffset = .zero
        exploreImageView.layer.shadowRadius = 10.0
        exploreImageView.layer.shadowPath = UIBezierPath(rect: exploreImageView.bounds).cgPath
        exploreImageView.layer.shouldRasterize = true
        exploreImageView.layer.rasterizationScale = UIScreen.main.scale
    }

}
