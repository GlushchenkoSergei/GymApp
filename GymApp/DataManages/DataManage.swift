//
//  DataManage.swift
//  GymApp
//
//  Created by mac on 23.04.2022.
//

import Foundation

struct DataManage {
    
    static var shared = DataManage()
    
    lazy var data = ["Breast": dataBreast, "Biceps": dataBiceps, "Triceps": dataTriceps, "Back": dataBack, "Legs": dataLegs]
    
    //1
    lazy var dataBreast = [descriptionForBreast, imageForBreast, numberOfRepetitionsForBreast]
        var descriptionForBreast  = [
        "Жим штанги на ровной скамье",
        "Жим штанги на скамье с уклоном в верх",
        "Разводка гантелей",
        "Бабочка"
        ]
        var imageForBreast = [
            "",
            "",
            "",
            ""
        ]
        
        var numberOfRepetitionsForBreast = [
            "",
            "",
            "",
            ""
        ]
    
    // 2
        lazy var dataBiceps = [descriptionForBiceps, imageForBiceps, numberOfRepetitionsForBiceps]
        var descriptionForBiceps: [String] =
        [
        "Подъем гантерей на бицепс",
        "Молотки",
        "Подтягивания обратным хватом",
        "Тяга нижнего блока"
        ]
    
        var imageForBiceps: [String] =
        [
            "",
            "",
            "",
            ""
        ]
        
        var numberOfRepetitionsForBiceps: [String] = [
            "",
            "",
            "",
            ""
        ]
 
//    3
        lazy var dataTriceps = [descriptionForTriceps, imageForTriceps, numberOfRepetitionsForTriceps]
        var descriptionForTriceps: [String] =
        [
            "Брусья",
            "Тяга верхнего блока на трицепс",
            "Обратные отжимания на скамье",
            "Жим гантелей из за головы"
        ]
        var imageForTriceps: [String] =
        [
            "",
            "",
            "",
            ""
        
        ]
        
        var numberOfRepetitionsForTriceps: [String] = [
            "",
            "",
            "",
            ""
        
        ]
    
    //4
        lazy var dataBack = [descriptionForBack, imageForBack, numberOfRepetitionsForBack]
        var descriptionForBack = [
            "Тяга верхнего блока к животу",
            "Тяга верхнего блока к груди",
            "Подтягивания прямым хватом",
            "Становая тяга",
            "Тестовая 5 строка"
        ]
        
        var imageForBack = [
            "",
            "",
            "",
            "",
            ""
        ]
        
        var numberOfRepetitionsForBack = [
            "",
            "",
            "",
            "",
            ""
        ]
        

    //5
        lazy var dataLegs = [descriptionForLegs, imageForLegs, numberOfRepetitionsForLegs]
        var descriptionForLegs = [
            "Приседания со штангой",
            "Выпады",
            "Сведение ног в тренажере",
            "Подъемы на носке"
        ]
        
        var imageForLegs = [
            "",
            "",
            "",
            ""
        ]
        
        var numberOfRepetitionsForLegs = [
            "",
            "",
            "",
            ""
        ]
 
    private init(){}
}


