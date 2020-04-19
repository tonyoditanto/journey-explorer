//
//  journeyTableViewCell.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 15/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

class journeyTableViewCell: UITableViewCell {

    @IBOutlet weak var journeyImageView: UIImageView!
    @IBOutlet weak var journeyTitleLabel: UILabel!
    @IBOutlet weak var journeySubtitleLabel: UILabel!
    
    var journeyCell: Journey!{
        didSet{
            configureCell()
        }
    }
    
    func configureCell() {
        configureImage()
        configureLabel()
    }
    
    func configureImage(){
        journeyImageView.image = UIImage(named: journeyCell.journeyImageName)
        journeyImageView.layer.cornerRadius = 10.0
        journeyImageView.layer.masksToBounds = true
        
        journeyImageView.layer.shadowColor = UIColor.black.cgColor
        journeyImageView.layer.shadowOpacity = 1
        journeyImageView.layer.shadowOffset = .zero
        journeyImageView.layer.shadowRadius = 10.0
        journeyImageView.layer.shadowPath = UIBezierPath(rect: journeyImageView.bounds).cgPath
        journeyImageView.layer.shouldRasterize = true
        journeyImageView.layer.rasterizationScale = UIScreen.main.scale
        

    }
    
    func configureLabel(){
        journeyTitleLabel.text = journeyCell.journeyTitle
        
        switch journeyCell.journeyTeam {
        case true:
            journeySubtitleLabel.text = "Group Challenge - \(journeyCell.journeyDuration) Weeks"
        default:
            journeySubtitleLabel.text = "Individual Challenge - \(journeyCell.journeyDuration) Weeks"
        }

    }

}
