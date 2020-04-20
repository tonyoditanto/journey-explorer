//
//  thumbnailTableViewCell.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 16/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

protocol ThumbnailTableViewCellDelegate {
  func closeButton()
}

class thumbnailTableViewCell: UITableViewCell {
    
    var delegate:ThumbnailTableViewCellDelegate?
    static let cellID = "thumbnailTableViewCell"
    static let cellHeight: CGFloat = 452
    
    @IBOutlet weak var journeyImageView: UIImageView!
    @IBOutlet weak var journeyTitleLabel: UILabel!
    @IBOutlet weak var journeySubtitleLabel: UILabel!
    
    //weak var delegate: ButtonTapDelegate
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
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
        configureImage()
        configureLabel()
    }
    
    func configureImage(){
        self.journeyImageView.image = UIImage(named: journeyCell.journeyImageName)
    }
    
    func configureLabel(){
        self.journeyTitleLabel.text = journeyCell.journeyTitle
        
        switch journeyCell.journeyTeam {
        case true:
            self.journeySubtitleLabel.text = "Group Challenge - \(journeyCell.journeyDuration) Weeks"
        default:
            self.journeySubtitleLabel.text = "Individual Challenge - \(journeyCell.journeyDuration) Weeks"
        }

    }

    @IBAction func closeModal(_ sender: Any) {
        delegate?.closeButton()
    }
    
}
