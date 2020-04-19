//
//  thumbnailTableViewCell.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 16/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

//protocol ButtonTapDelegate {
//  func didTapButton()
//}

class thumbnailTableViewCell: UITableViewCell {
    
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
        
    }
    //    var journey: Journey!{
//        didSet{
//            configureCell()
//        }
//    }
//
//    func configureCell(ImageView journeyImageView : String, Title journeyTitle : String, Duration journeyDuration :  Int, Team journeyTeam : Bool) {
//        configureImage(ImageView : journeyImageView)
//        configureLabel(Title : journeyTitle, Duration : journeyDuration, Team : journeyTeam)
////        self.journeyImageView.image = UIImage(named: journeyImageView)
//    }
//
//    func configureImage(ImageView journeyImageView : String){
//        self.journeyImageView.image = UIImage(named: journeyImageView)
//    }
//
//    func configureLabel(Title journeyTitle : String, Duration journeyDuration :  Int, Team journeyTeam : Bool ){
//        self.journeyTitleLabel.text = journeyTitle
//
//        switch journeyTeam {
//        case true:
//            self.journeySubtitleLabel.text = "Group Challenge - \(journeyDuration) Weeks"
//        default:
//            self.journeySubtitleLabel.text = "Individual Challenge - \(journeyDuration) Weeks"
//        }
//
//    }
    
    
}
