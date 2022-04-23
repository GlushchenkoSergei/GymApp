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
    var muscle: MuscleGroup
    
    
    // Вот тут наверное нужно использовать дженерики?? Что бы не писать много функций
    static func getExercise() -> Exercise {
        Exercise(description: <#T##String#>, image: <#T##String#>, numberOfRepetitions: <#T##String#>, muscle: <#T##MuscleGroup#>)
    }
    
}
enum MuscleGroup {
    case biceps
    case triceps
    case breast
    case back
    case legs
}
