//
//  DataForTriceps.swift
//  GymApp
//
//  Created by mac on 23.04.2022.
//

import Foundation


class DataForTriceps {
    static let shared = DataForTriceps()
    var description: [String] =
    [
        "Брусья",
        "Тяга верхнего блока на трицепс",
        "Обратные отжимания на скамье",
        "Жим гантелей из за головы"
    ]
    var image: [String] =
    [
        "",
        "",
        "",
        ""
    
    ]
    
    var numberOfRepetitions: [String] = [
        "",
        "",
        "",
        ""
    
    ]
    private init(){}
}
