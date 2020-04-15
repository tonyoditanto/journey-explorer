//
//  Explorer.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 14/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import Foundation

enum ExplorerType : String {
    case senior = "Senior Explorer"
    case junior = "Junior Explorer"
}

enum ExplorerShift : String {
    case morning = "morning"
    case afternoon = "afternoon"
    case all = "all"
}

enum ExplorerRole : String {
    case tech = "Tech"
    case design = "Design"
    case other = "Other"
    case academyManager = "Academy Manager"
    case codingFacilitator = "Coding Facilitator"
    case designFacilitator = "Design Facilitator"
    case professionalFacilitator = "Professional Facilitator"
}

struct Explorer {
    var explorerID : Int
    var explorerName : String
    var explorerType : ExplorerType
//    var explorerSenior : Bool
    var explorerShift : ExplorerShift
//    var explorerShift : String
    var explorerRole : ExplorerRole
//    var explorerRole : String
    var explorerImageName : String
    var explorerWantToLearn : [String]
    var explorerCanHelpWith : [String]
}
