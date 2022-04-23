//
//  DataForBiceps.swift
//  GymApp
//
//  Created by mac on 23.04.2022.
//

import Foundation
class DataForBiceps {
    static let shared = DataForBiceps()
    var description: [String] =
    [
    "Подъем гантерей на бицепс",
    "Молотки",
    "Подтягивания обратным хватом",
    "Тяга нижнего блока"
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
