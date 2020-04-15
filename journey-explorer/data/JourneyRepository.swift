//
//  JourneyRepository.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 14/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import Foundation

class JourneyRepository {
    func fetchJourneys() -> [Journey] {
        var journeys = [Journey]()
        
        journeys.append(Journey(journeyID: 1,
                                journeyTitle: "Challenge 1",
                                journeyImageName: "challenge1",
                                journeyType: .mini,
                                journeyTeam: true,
                                journeyDescription: "T-63 to Planet The Mini. To prepare for our first planet exploration, we need to explore iOS technology and create tools to aid us for the journey ahead. All explorers are expected to understand basic iOS development during this challenge.",
                                journeyDuration: 5,
                                journeyLearningGoals: ["Full Cycle CBL",
                                                       "HIG (Human Interface Guidelines)",
                                                       "Prototyping",
                                                       "Xcode & Basic Swift",
                                                       "Group Collaboration"],
                                journeyConstraints: ["No Game",
                                                     "No Back Ends",
                                                     "No Augmented Reality"],
                                journeyDeliverables: ["Working Prototype"]))
        
        journeys.append(Journey(journeyID: 2,
                                journeyTitle: "Challenge 2",
                                journeyImageName: "challenge2",
                                journeyType: .nano,
                                journeyTeam: false,
                                journeyDescription: "T-63 to Planet The Mini. To prepare for our first planet exploration, we need to explore iOS technology and create tools to aid us for the journey ahead. All explorers are expected to understand basic iOS development during this challenge.",
                                journeyDuration: 2,
                                journeyLearningGoals: ["Applied Investigation",
                                                       "Everyone can code"],
                                journeyConstraints: ["This is individual work",
                                                       "No third-party library",
                                                       "Use HIG interfaces essentials"],
                                journeyDeliverables: ["Sketch Prototype",
                                                     "Learning Backlog Document",
                                                     "Xcode Project",
                                                     "Feedback Report Document"]))
        
        journeys.append(Journey(journeyID: 3,
                                journeyTitle: "Challenge 3",
                                journeyImageName: "challenge3",
                                journeyType: .mini,
                                journeyTeam: true,
                                journeyDescription: "T-63 to Planet The Mini. To prepare for our first planet exploration, we need to explore iOS technology and create tools to aid us for the journey ahead. All explorers are expected to understand basic iOS development during this challenge.",
                                journeyDuration: 4,
                                journeyLearningGoals: ["Collaboration",
                                                       "Best Practice Coding",
                                                       "Understanding User",
                                                       "Best Practice Project Management"],
                                journeyConstraints: ["No Constraint"],
                                journeyDeliverables: ["User narration",
                                                      "Trello for project",
                                                      "Working app with clean code"]))

        journeys.append(Journey(journeyID: 4,
                                journeyTitle: "Challenge 4",
                                journeyImageName: "challenge4",
                                journeyType: .mini,
                                journeyTeam: true,
                                journeyDescription: "T-63 to Planet The Mini. To prepare for our first planet exploration, we need to explore iOS technology and create tools to aid us for the journey ahead. All explorers are expected to understand basic iOS development during this challenge.",
                                journeyDuration: 4,
                                journeyLearningGoals: ["TBA"],
                                journeyConstraints: ["TBA"],
                                journeyDeliverables: ["TBA"]))
        
        journeys.append(Journey(journeyID: 5,
                                journeyTitle: "Challenge 5",
                                journeyImageName: "challenge5",
                                journeyType: .nano,
                                journeyTeam: false,
                                journeyDescription: "T-63 to Planet The Mini. To prepare for our first planet exploration, we need to explore iOS technology and create tools to aid us for the journey ahead. All explorers are expected to understand basic iOS development during this challenge.",
                                journeyDuration: 5,
                                journeyLearningGoals: ["TBA"],
                                journeyConstraints: ["TBA"],
                                journeyDeliverables: ["TBA"]))

        journeys.append(Journey(journeyID: 6,
                                journeyTitle: "Challenge 6",
                                journeyImageName: "challenge6",
                                journeyType: .macro,
                                journeyTeam: true,
                                journeyDescription: "T-63 to Planet The Mini. To prepare for our first planet exploration, we need to explore iOS technology and create tools to aid us for the journey ahead. All explorers are expected to understand basic iOS development during this challenge.",
                                journeyDuration: 12,
                                journeyLearningGoals: ["TBA"],
                                journeyConstraints: ["TBA"],
                                journeyDeliverables: ["TBA"]))
        
        return journeys
    }
}
