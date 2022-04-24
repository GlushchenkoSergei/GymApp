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
    
    
    var exercises: Exercise!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(exercises.description)")
        image.image = UIImage(named: exercises.image)
        nameLabel.text = exercises.description
    }
    
    @IBAction func tapDone(_ sender: Any) {
    }
    
  
}
