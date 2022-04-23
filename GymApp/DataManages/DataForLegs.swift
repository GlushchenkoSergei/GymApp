//
//  DataForLegs.swift
//  GymApp
//
//  Created by mac on 23.04.2022.
//

import Foundation

class DataForLegs {
    static let shared = DataForLegs()
    
    var description = [
        "Приседания со штангой",
        "Выпады",
        "Сведение ног в тренажере",
        "Подъемы на носке"
    ]
    
    var image = [
        "",
        "",
        "",
        ""
    ]
    
    var numberOfRepetitions = [
        "",
        "",
        "",
        ""
    ]
    private init(){}
}
