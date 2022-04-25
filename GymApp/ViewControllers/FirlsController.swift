//
//  FirlsController.swift
//  GymApp
//
//  Created by mac on 25.04.2022.
//

import UIKit

class FirlsController: UIViewController {
    
   
    @IBAction func buttonDiary(_ sender: Any) {
        showAlert(with: "In next update", and: "Скоро релиз ф-ци дневника")
    }
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
}
