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

        explorers.append(Explorer(explorerID: 17,
                                  explorerName: "Ferdinan Linardi",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .design,
                                  explorerImageName: "Ferdinan_MO",
                                  explorerWantToLearn: ["Swift",
                                                        "UI/UX Design",
                                                        "Copywriting",
                                                        "Public Speaking",
                                                        "English Practice"],
                                  explorerCanHelpWith: ["Ilustration",
                                                        "Graphic Design",
                                                        "Fashion Styling"]))
        
        explorers.append(Explorer(explorerID: 18,
                                  explorerName: "Geraldine Janice Wibisono",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .design,
                                  explorerImageName: "Janice_MO",
                                  explorerWantToLearn: ["Swift",
                                                        "UI/UX Design",
                                                        "Copywriting",
                                                        "Public Speaking",
                                                        "English Practice"],
                                  explorerCanHelpWith: ["Ilustration",
                                                        "Graphic Design",
                                                        "Fashion Styling"]))

    explorers.append(Explorer(explorerID: 19,
                                  explorerName: "Hana Christina Rondoh",
                                  explorerType: .junior,
                                  explorerShift: .morning,
                                  explorerRole: .design,
                                  explorerImageName: "Hana_MO",
                                  explorerWantToLearn: ["XCode, Swift, UI/UX Design, English Practice, English Public Speaking, English copywriting"],
                                  explorerCanHelpWith: ["Fashion design, Graphic design, Fashion business and styling"]))
        
        explorers.append(Explorer(explorerID: 20,
                                      explorerName: "Henry Christanto Sutjiono",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .design,
                                      explorerImageName: "Henry_MO",
                                      explorerWantToLearn: ["XBasic Coding for XCode, designing prototype with Sketch"],
                                      explorerCanHelpWith: ["Photography, Copywriting & Advertising"]))

        explorers.append(Explorer(explorerID: 21,
                                      explorerName: "Ibrahim Yunus Muhammad Fiqhan",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Fiqhan_MO",
                                      explorerWantToLearn: ["English, Graphic Design, Custom Component in Swift (Star Rating)"],
                                      explorerCanHelpWith: ["Basic programing, Object Oriented Programing (OOP), Software Design Pattern"]))

        explorers.append(Explorer(explorerID: 22,
                                      explorerName: "James Tirto",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .other,
                                      explorerImageName: "James_MO",
                                      explorerWantToLearn: [""],
                                      explorerCanHelpWith: [""]))

        explorers.append(Explorer(explorerID: 23,
                                      explorerName: "Janice Budihartono",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "J'Ice_MO",
                                      explorerWantToLearn: ["Auto layout, Intermediate Swift Code (maybe), Design"],
                                      explorerCanHelpWith: ["- Code","- English"]))

        explorers.append(Explorer(explorerID: 24,
                                      explorerName: "Jeffrey Phinardi Kosasih",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Jep_MO",
                                      explorerWantToLearn: ["Public Speaking, Xcode (Constraint, Chat Feature, and Verification Code)"],
                                      explorerCanHelpWith: ["Youtube content, Pr, Ph, Ai, Basic coding, "]))


        explorers.append(Explorer(explorerID: 25,
                                      explorerName: "Jeffry Sandy Purnomo",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Jeffry_MO",
                                      explorerWantToLearn: ["Swift UI"],
                                      explorerCanHelpWith: ["Basic Code, Basic Sketch"]))

        explorers.append(Explorer(explorerID: 26,
                                      explorerName: "Jesslyn Faustina",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .design,
                                      explorerImageName: "Jesslyn_MO",
                                      explorerWantToLearn: ["Intermediate coding"],
                                      explorerCanHelpWith: ["Graphic Design"]))
        
        explorers.append(Explorer(explorerID: 27,
                                      explorerName: "Josephine Sugiharto",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .design,
                                      explorerImageName: "Jose_MO",
                                      explorerWantToLearn: ["Basic Coding"],
                                      explorerCanHelpWith: ["Branding, Graphic Design"]))
        
        explorers.append(Explorer(explorerID: 28,
                                      explorerName: "Karina Enny Agustina",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .other,
                                      explorerImageName: "Karina_MO",
                                      explorerWantToLearn: [""],
                                      explorerCanHelpWith: [""]))
        
        explorers.append(Explorer(explorerID: 29,
                                      explorerName: "Leonora Jeanifer",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .other,
                                      explorerImageName: "Jean_MO",
                                      explorerWantToLearn: [""],
                                      explorerCanHelpWith: [""]))
        
        explorers.append(Explorer(explorerID: 30,
                                      explorerName: "Lois Pangestu",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Lois_MO",
                                      explorerWantToLearn: [""],
                                      explorerCanHelpWith: [""]))
        
        explorers.append(Explorer(explorerID: 31,
                                      explorerName: "M. Rizky Hidayat",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Rizky_MO",
                                      explorerWantToLearn: ["- English speak",
                                                            "- Swift code style",
                                                            "- Self management"],
                                      explorerCanHelpWith: ["Basic Code, SysAdmin"]))
        
        explorers.append(Explorer(explorerID: 32,
                                      explorerName: "Martin Ivo Hardinoto",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Martin_MO",
                                      explorerWantToLearn: [""],
                                      explorerCanHelpWith: ["- Basic swift",
                                                            "- Ask me everything about covid-19"]))

        explorers.append(Explorer(explorerID: 33,
                                      explorerName: "Michael Randicha Gunawan Santoso",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Michael_MO",
                                      explorerWantToLearn: ["Someone with Intermediate / Advanced understanding on TableViewController, TableViewCell, InputAccessoryView, TableViewCell's item's constraint & Protocol"],
                                      explorerCanHelpWith: ["Coder : Basic Swift, Intermediate Javascript (Angular & Ionic), Intermediate Laravel, Interested in Flutter"]))
        
        explorers.append(Explorer(explorerID: 34,
                                      explorerName: "Moh. Zinnur Atthufail Addausi",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "A'il_MO",
                                      explorerWantToLearn: [""],
                                      explorerCanHelpWith: [""]))
        
        explorers.append(Explorer(explorerID: 35,
                                      explorerName: "Najibullah Ulul Albab",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Ulul_MO",
                                      explorerWantToLearn: ["Swift Intermediate, UX Designer"],
                                      explorerCanHelpWith: ["BCode, UI/UX Pattern"]))
        
        explorers.append(Explorer(explorerID: 36,
                                      explorerName: "Natanael Geraldo Santoso",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Natanael_MO",
                                      explorerWantToLearn: [""],
                                      explorerCanHelpWith: [""]))
        
        explorers.append(Explorer(explorerID: 37,
                                      explorerName: "Nicholas Ang",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Nicholas_MO",
                                      explorerWantToLearn: [""],
                                      explorerCanHelpWith: ["Videography, Photography, Game Development (Unity), Animation and VFX, Basic Code"]))
        
        explorers.append(Explorer(explorerID: 38,
                                      explorerName: "Nur Afni Zuhrotul Laili",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Afni_MO",
                                      explorerWantToLearn: [""],
                                      explorerCanHelpWith: ["- basic swift",
                                                            "- passing data between viewcontroller",
                                                            "- set onboarding screen"]))
        
        explorers.append(Explorer(explorerID: 39,
                                      explorerName: "Oktavia Citra Resmi Rachmawati",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Citra_MO",
                                      explorerWantToLearn: [""],
                                      explorerCanHelpWith: [""]))
        
        explorers.append(Explorer(explorerID: 40,
                                      explorerName: "Rachel Audrey Effendi",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .design,
                                      explorerImageName: "Rachel_MO",
                                      explorerWantToLearn: ["Basic coding"],
                                      explorerCanHelpWith: ["Graphic Design, Branding"]))
        
        explorers.append(Explorer(explorerID: 41,
                                      explorerName: "Rizal Hidayat",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Rizal_MO",
                                      explorerWantToLearn: ["English"],
                                      explorerCanHelpWith: ["Basic code / basic swift"]))
        
        explorers.append(Explorer(explorerID: 42,
                                      explorerName: "Siti Istiany Tribunda",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .design,
                                      explorerImageName: "Isti_MO",
                                      explorerWantToLearn: ["-English speaking",
                                                            "-Public speaking",
                                                            "-Team work",
                                                            "- Coding, Swift, UI&UX Design."],
                                      explorerCanHelpWith: ["Graphic Design :",
                                                            "Branding",
                                                            "Layout",
                                                            "Social Media Enthusiast :p"]))
        
        explorers.append(Explorer(explorerID: 43,
                                      explorerName: "Steven Wijaya",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "SW_MO",
                                      explorerWantToLearn: [""],
                                      explorerCanHelpWith: ["Basic Code, Basic Swift, iOS dev, a bit MacOS dev, Laravel, Backend, etc."]))
        
        explorers.append(Explorer(explorerID: 44,
                                      explorerName: "Taufiq Ramadhany",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Taufiq_MO",
                                      explorerWantToLearn: [""],
                                      explorerCanHelpWith: ["Basic swift"]))
        
        explorers.append(Explorer(explorerID: 45,
                                      explorerName: "Tony Varian Yoditanto",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Tony_MO",
                                      explorerWantToLearn: [""],
                                      explorerCanHelpWith: [""]))
        
        explorers.append(Explorer(explorerID: 46,
                                      explorerName: "Wahyu Kharisma Mujiono",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Wahyujus_MO",
                                      explorerWantToLearn: [""],
                                      explorerCanHelpWith: [""]))
        
        explorers.append(Explorer(explorerID: 47,
                                      explorerName: "Wahyu Saputra",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Wahyu_MO",
                                      explorerWantToLearn: ["Photoeditor, English Speaking"],
                                      explorerCanHelpWith: ["Basic Coding"]))
        
        explorers.append(Explorer(explorerID: 48,
                                      explorerName: "Winata Arafat Fal Aham",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .tech,
                                      explorerImageName: "Badai_MO",
                                      explorerWantToLearn: ["UI/UX Design, Swift, English Speaking"],
                                      explorerCanHelpWith: ["Basic programing, Object Oriented Programing (OOP), Software Design Pattern"]))
        
        explorers.append(Explorer(explorerID: 49,
                                      explorerName: "Yonatan Niko Sucahyo",
                                      explorerType: .junior,
                                      explorerShift: .morning,
                                      explorerRole: .other,
                                      explorerImageName: "Niko_MO",
                                      explorerWantToLearn: ["basic coding, graphic Design"],
                                      explorerCanHelpWith: ["Business Management"]))

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
