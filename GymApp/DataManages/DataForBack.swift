//
//  DataForBack.swift
//  GymApp
//
//  Created by mac on 23.04.2022.
//

import Foundation

class DataForBack {
    static let shared = DataForBack()
    
    var description = [
        "Тяга верхнего блока к животу",
        "Тяга верхнего блока к груди",
        "Подтягивания прямым хватом",
        "Становая тяга"
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
