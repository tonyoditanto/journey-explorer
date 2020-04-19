//
//  learningGoalsTableViewCell.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 16/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

class learningGoalsTableViewCell: UITableViewCell {

    static let cellID = "learningGoalsTableViewCell"
    @IBOutlet weak var journeyLearningGoalsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    var journey: Journey!{
//        didSet{
//            configureCell()
//        }
//    }
//
//    func configureCell(LearningGoals journeyLearningGoals : [String]) {
//        configureLabel(LearningGoals : journeyLearningGoals)
//    }
//
//    func configureLabel(LearningGoals journeyLearningGoals : [String]){
//        var mergeLearningGoals: String = ""
//        for index in 1...journeyLearningGoals.count {
//            mergeLearningGoals += "\(journeyLearningGoals[index])\n"
//        }
//        journeyLearningGoalsLabel.text = mergeLearningGoals
//
//    }
    
        var journeyCell: Journey!{
            didSet{
                configureCell()
            }
        }
    
        func configureCell() {
            configureLabel()
        }
        
        func configureLabel(){
            var mergeLearningGoals: String = ""
            for index in 1...journeyCell.journeyLearningGoals.count {
                mergeLearningGoals += "\(journeyCell.journeyLearningGoals[index-1])\n"
            }
            journeyLearningGoalsLabel.text = mergeLearningGoals

        }
    
}
