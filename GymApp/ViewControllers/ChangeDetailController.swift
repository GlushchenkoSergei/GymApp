//
//  ChangeDetailController.swift
//  GymApp
//
//  Created by mac on 26.04.2022.
//

import UIKit

class ChangeDetailController: UIViewController, UITextFieldDelegate {

    var exercise: Exercise!
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var nameText: UITextField!
    @IBOutlet var descriptionText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: exercise.image)
        nameText.text = exercise.description
        descriptionText.text = exercise.numberOfRepetitions
    }
    
    
    @IBAction func tapSave(_ sender: Any) {
        var counter = 0
        for find in DataManage.shared.exercises {
            if find.description == exercise.description {
                DataManage.shared.exercises[counter].description = nameText.text ?? ""
                DataManage.shared.exercises[counter].numberOfRepetitions = descriptionText.text ?? ""
            }
            counter += 1
        }
    }
        
    
    @IBAction func tapCancel(_ sender: Any) {
        nameText.text = exercise.description
        descriptionText.text = exercise.numberOfRepetitions
    }
    
    
    // Настройка текстовых полей
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
    
}



