//
//  DelailController.swift
//  GymApp
//
//  Created by mac on 24.04.2022.
//

import UIKit

class DetailController: UIViewController {
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    var exercise: Exercise!
    var delegate: ExercisesControllerProtocol!
    
    var indicatorButton = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(exercise.description)")
        image.image = UIImage(named: exercise.image)
        nameLabel.text = exercise.description
    }
    
   
    @IBAction func tapDone(_ sender: UIButton) {
        
        saveExercise()
    
    }
    
    private func saveExercise() {
        delegate.saveExercise(exercise: exercise)
        
    }
    
    func changeColorCell() {
        
    }
    
}

