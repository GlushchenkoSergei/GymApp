//
//  Model.swift
//  GymApp
//
//  Created by mac on 23.04.2022.
//

import Foundation
import CoreText

struct Exercise {
    var description: String
    var image: String
    var numberOfRepetitions: String
    
    
    static func getExercise(muscle: MuscleGroup) -> [Exercise] {
        var setOfExercises: [Exercise] = []
        var data2: [[String]] = [[]]
        
        switch muscle {
        case .biceps: data2 = DataManage.shared.data["Biceps"]!
        case .triceps: data2 = DataManage.shared.data["Triceps"]!
        case .breast: data2 = DataManage.shared.data["Breast"]!
        case .back: data2 = DataManage.shared.data["Back"]!
        case .legs: data2 = DataManage.shared.data["Legs"]!
        }
        
        let description = data2[0]
        let image = data2[1]
        let numberOfRepetitions = data2[2]
        
        for index in 0..<description.count {
            let exercise = Exercise(description: description[index], image: image[index], numberOfRepetitions: numberOfRepetitions[index])
            setOfExercises.append(exercise)
        }
        
        return setOfExercises
    }
}

enum MuscleGroup {
    case biceps
    case triceps
    case breast
    case back
    case legs
}
