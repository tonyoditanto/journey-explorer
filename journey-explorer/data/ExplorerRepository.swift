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
        
        explorers.append(Explorer(explorerID: 9,
                                  explorerName: "Audhy Virabri Kressa",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .tech,
                                  explorerImageName: "Audhy_MO",
                                  explorerWantToLearn: [""],
                                  explorerCanHelpWith: ["Basic Swift",
                                                        "Git Version Controller",
                                                        "Parsing Data"]))
        
        explorers.append(Explorer(explorerID: 10,
                                  explorerName: "Baby Amelia Andina Putri",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .other,
                                  explorerImageName: "Baby_MO",
                                  explorerWantToLearn: ["Swift",
                                                        "XCode",
                                                        "UI/UX design"],
                                  explorerCanHelpWith: ["Business Insights",
                                                        "Public Speaking and presentation skill",
                                                        "Basic Design"]))
        
        explorers.append(Explorer(explorerID: 11,
                                  explorerName: "Bagus Setiawan",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .tech,
                                  explorerImageName: "Bagus_MO",
                                  explorerWantToLearn: [""],
                                  explorerCanHelpWith: [""]))
        
        explorers.append(Explorer(explorerID: 12,
                                  explorerName: "Benyamin Rondang Tuahta",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .tech,
                                  explorerImageName: "Ben_MO",
                                  explorerWantToLearn: ["Leading & trailing swipe action"],
                                  explorerCanHelpWith: ["Basic coding"]))
        
        explorers.append(Explorer(explorerID: 13,
                                  explorerName: "Dinie P Hemas",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .tech,
                                  explorerImageName: "Dinie_MO",
                                  explorerWantToLearn: ["Public speaking",
                                                        "English"],
                                  explorerCanHelpWith: ["Basic Coding",
                                                        "UI Patern"]))

        explorers.append(Explorer(explorerID: 14,
                                  explorerName: "Dionesia Nadya Dewayani",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .design,
                                  explorerImageName: "Nadya_MO",
                                  explorerWantToLearn: [""],
                                  explorerCanHelpWith: ["Illustration"]))
        
        explorers.append(Explorer(explorerID: 15,
                                  explorerName: "Edward da Costa",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .tech,
                                  explorerImageName: "Edward_MO",
                                  explorerWantToLearn: ["Design",
                                                        "Advanced Code"],
                                  explorerCanHelpWith: ["Basic Code"]))
    
        explorers.append(Explorer(explorerID: 16,
                                  explorerName: "Faris Rasyadi Putra",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .tech,
                                  explorerImageName: "Faris_MO",
                                  explorerWantToLearn: [""],
                                  explorerCanHelpWith: ["Unity 3D Programmer"]))
        
        
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
        
        explorers.append(Explorer(explorerID: 58,
                                  explorerName: "Rachmat Kukuh Rahadiansyah",
                                  explorerType: .senior,
                                  explorerShift: .all,
                                  explorerRole: .codingFacilitator,
                                  explorerImageName: "Kukuh_SE",
                                  explorerWantToLearn: [""],
                                  explorerCanHelpWith: ["- General iOS app development",
                                                        "- iOS frameworks",
                                                        "- Swift language"]))
        
        explorers.append(Explorer(explorerID: 59,
                                  explorerName: "Yehezkiel Cheryan Tjandra",
                                  explorerType: .senior,
                                  explorerShift: .all,
                                  explorerRole: .professionalFacilitator,
                                  explorerImageName: "Ryan_SE",
                                  explorerWantToLearn: ["Swift/Xcode in general"],
                                  explorerCanHelpWith: ["- English language",
                                                        "- Public speaking",
                                                        "- Business presentation",
                                                        "- Business writing",
                                                        "- Business insights",
                                                        "- iOS frameworks",
                                                        "- Swift language"]))
        
        explorers.append(Explorer(explorerID: 60,
                                  explorerName: "Yulibar Husni",
                                  explorerType: .senior,
                                  explorerShift: .all,
                                  explorerRole: .codingFacilitator,
                                  explorerImageName: "Yulibar_SE",
                                  explorerWantToLearn: ["- Ideation",
                                                        "- English Speaking",
                                                        "- Project Management"],
                                  explorerCanHelpWith: ["- Swift",
                                                        "- Ideation",
                                                        "- Animation production"]))
        
        return explorers
    }
}
