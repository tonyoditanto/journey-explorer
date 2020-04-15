//
//  Journey.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 14/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import Foundation

enum JourneyType: String {
    case mini = "mini"
    case nano = "nano"
    case macro = "macro"
}

struct Journey {
    var journeyID : Int
    var journeyTitle : String
    var journeyImageName : String
    var journeyType : JourneyType
//    var journeyType : String
    var journeyTeam : Bool
    var journeyDescription : String
    var journeyDuration : Int
    var journeyLearningGoals : [String]
    var journeyConstraints : [String]
    var journeyDeliverables : [String]
}
