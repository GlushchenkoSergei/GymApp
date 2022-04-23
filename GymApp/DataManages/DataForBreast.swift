//
//  DataManage.swift
//  GymApp
//
//  Created by mac on 23.04.2022.
//

import Foundation
class DataForBreast {
    static let shared = DataForBreast()
    
    var description  = [
    "Жим штанги на ровной скамье",
    "Жим штанги на скамье с уклоном в верх",
    "Разводка гантелей",
    "Бабочка"
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
