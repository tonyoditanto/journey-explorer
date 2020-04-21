//
//  ExplorerRepository.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 14/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import Foundation

class ExplorerRepository {
    func fetchExplorers() -> [Explorer]{
        var explorers = [Explorer]()
        explorers.append(Explorer(explorerID: 1,
                                  explorerName: "Ahmad Rizki Maulana",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .tech,
                                  explorerImageName: "Rizki_MO",
                                  explorerWantToLearn: [""],
                                  explorerCanHelpWith: ["Coding Basic"]))
        
        explorers.append(Explorer(explorerID: 2,
                                  explorerName: "Albert Pangestu",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .tech,
                                  explorerImageName: "Albert_MO",
                                  explorerWantToLearn: [""],
                                  explorerCanHelpWith: [""]))
        
        explorers.append(Explorer(explorerID: 3,
                                  explorerName: "Alifudin Aziz",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .tech,
                                  explorerImageName: "Aziz_MO",
                                  explorerWantToLearn: [""],
                                  explorerCanHelpWith: [""]))
        
        explorers.append(Explorer(explorerID: 4,
                                  explorerName: "Amelia Verina Siswanto",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .design,
                                  explorerImageName: "Amelia_MO",
                                  explorerWantToLearn: ["Swift",
                                                        "UI/UX Design",
                                                        "Public Speaking",
                                                        "English Practice"],
                                  explorerCanHelpWith: ["Design",
                                                        "Interior",
                                                        "Architecture Design"]))

        explorers.append(Explorer(explorerID: 5,
                                  explorerName: "Angela Priscila Montolalu",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .design,
                                  explorerImageName: "Angel_MO",
                                  explorerWantToLearn: ["UI/UX Design",
                                                        "Swift",
                                                        "English Speaking"],
                                  explorerCanHelpWith: ["Graphic Design (Branding)"]))
        
        explorers.append(Explorer(explorerID: 6,
                                  explorerName: "Ardy Stephanus",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .tech,
                                  explorerImageName: "Ardy_MO",
                                  explorerWantToLearn: [""],
                                  explorerCanHelpWith: ["Basic Coding",
                                                        "Basic Swift"]))

        explorers.append(Explorer(explorerID: 7,
                                  explorerName: "Arifin Firdaus",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .tech,
                                  explorerImageName: "Arifin_MO",
                                  explorerWantToLearn: [""],
                                  explorerCanHelpWith: ["iOS Development (UIKit)",
                                                        "Clean Code"]))
        
        explorers.append(Explorer(explorerID: 8,
                                  explorerName: "Arnold Pangestu",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .tech,
                                  explorerImageName: "Arnold_MO",
                                  explorerWantToLearn: [""],
                                  explorerCanHelpWith: ["Coding",
                                                        "Basic UI/UX Game Design",
                                                        "Unity"]))
//      ---- Senior ----
        explorers.append(Explorer(explorerID: 50,
                                  explorerName: "Ari Kurniawan",
                                  explorerType: .senior,
                                  explorerShift: .all,
                                  explorerRole: .designFacilitator,
                                  explorerImageName: "Ari_SE",
                                  explorerWantToLearn: ["Basic Coding"],
                                  explorerCanHelpWith: ["Graphic Design (layout/composition, typography, branding)",
                                                        "HIG",
                                                        "UI/UX"]))

        explorers.append(Explorer(explorerID: 51,
                                  explorerName: "Bayu Prasetya",
                                  explorerType: .senior,
                                  explorerShift: .all,
                                  explorerRole: .designFacilitator,
                                  explorerImageName: "Bayu_SE",
                                  explorerWantToLearn: [""],
                                  explorerCanHelpWith: ["Visual Branding",
                                                        "Design Thinking",
                                                        "Development Process",
                                                        "UI/UX",
                                                        "Nemenin Mikir",
                                                        "Makan-makan (soon)"]))
        
        explorers.append(Explorer(explorerID: 52,
                                  explorerName: "Dickson Leonard",
                                  explorerType: .senior,
                                  explorerShift: .all,
                                  explorerRole: .academyManager,
                                  explorerImageName: "Dickson_SE",
                                  explorerWantToLearn: [""],
                                  explorerCanHelpWith: ["Coding basics (algorithm, data structure, operations)",
                                                        "App development process (problem definition, ideation, prototy[ing, production)",
                                                        "Basic UX",
                                                        "Professional skills (leadership, communication)"]))
        
        explorers.append(Explorer(explorerID: 53,
                                  explorerName: "Fanny Halim",
                                  explorerType: .senior,
                                  explorerShift: .all,
                                  explorerRole: .codingFacilitator,
                                  explorerImageName: "Fanny_SE",
                                  explorerWantToLearn: ["English Speaking"],
                                  explorerCanHelpWith: ["Basic iOS Development (Swift, XCode, Auto Layout, Data Collection)",
                                                        "Discussion"]))
        
        explorers.append(Explorer(explorerID: 54,
                                  explorerName: "Gabriele Wijasa",
                                  explorerType: .senior,
                                  explorerShift: .all,
                                  explorerRole: .designFacilitator,
                                  explorerImageName: "Gabriele_SE",
                                  explorerWantToLearn: [""],
                                  explorerCanHelpWith: ["Graphic Design",
                                                        "UI/UX",
                                                        "Photography"]))

        explorers.append(Explorer(explorerID: 55,
                                  explorerName: "Januar Tanzil",
                                  explorerType: .senior,
                                  explorerShift: .all,
                                  explorerRole: .codingFacilitator,
                                  explorerImageName: "Januar_SE",
                                  explorerWantToLearn: [""],
                                  explorerCanHelpWith: ["Swift language",
                                                        "iOS Development",
                                                        "Game Development",
                                                        "Software Engineering in general"]))
        
        explorers.append(Explorer(explorerID: 56,
                                  explorerName: "Jaya Pranata",
                                  explorerType: .senior,
                                  explorerShift: .all,
                                  explorerRole: .codingFacilitator,
                                  explorerImageName: "Jaya_SE",
                                  explorerWantToLearn: ["Graphic Design (layout/composition, typography, branding)",
                                                        "UI/UX",
                                                        "problem analys",
                                                        "basic research",
                                                        "HIG"],
                                  explorerCanHelpWith: ["Coding basics",
                                                        "Swift Language",
                                                        "Auto Layout",
                                                        "Core Data",
                                                        "Map"]))
        
        explorers.append(Explorer(explorerID: 57,
                                  explorerName: "John Alan Ketaren",
                                  explorerType: .senior,
                                  explorerShift: .all,
                                  explorerRole: .professionalFacilitator,
                                  explorerImageName: "Ketaren_SE",
                                  explorerWantToLearn: ["Basic Xcode"],
                                  explorerCanHelpWith: ["Ideation",
                                                        "bringng resources",
                                                        "user testing",
                                                        "business",
                                                        "fintech",
                                                        "presentation",
                                                        "networking"]))
        
        return explorers
    }
}
