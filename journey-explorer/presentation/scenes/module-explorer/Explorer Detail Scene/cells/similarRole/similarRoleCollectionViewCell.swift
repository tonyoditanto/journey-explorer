//
//  similarRoleCollectionViewCell.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 21/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

class similarRoleCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var similarExplorerImageView: UIImageView!
    @IBOutlet weak var similarExplorerNameLabel: UILabel!
    @IBOutlet weak var similarExplorerRoleLabel: UILabel!
    
    
    var similarExplorer: Explorer!{
        didSet{
            configureCell()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(){
        configureImage()
        configureLabel()
    }
    
    func configureImage(){
        similarExplorerImageView.image = UIImage(named: similarExplorer.explorerImageName)
        similarExplorerImageView.layer.cornerRadius = 10.0
        similarExplorerImageView.layer.masksToBounds = true
        similarExplorerImageView.layer.shadowColor = UIColor.black.cgColor
        similarExplorerImageView.layer.shadowOpacity = 1
        similarExplorerImageView.layer.shadowOffset = .zero
        similarExplorerImageView.layer.shadowRadius = 10.0
        similarExplorerImageView.layer.shadowPath = UIBezierPath(rect: similarExplorerImageView.bounds).cgPath
        similarExplorerImageView.layer.shouldRasterize = true
        similarExplorerImageView.layer.rasterizationScale = UIScreen.main.scale
    }
    
    func configureLabel(){
        self.similarExplorerNameLabel.text = similarExplorer.explorerName
        self.similarExplorerRoleLabel.text = similarExplorer.explorerRole.rawValue
    }

}
