//
//  SettingsViewController.swift
//  GymApp
//
//  Created by mac on 24.04.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var numberOfStepper: UILabel!
//    @IBOutlet var defaultStepper: UIStepper!
    
    @IBOutlet var outletSegmentControl: UISegmentedControl!
    
    @IBOutlet var switchBreast: UISwitch!
    @IBOutlet var switchBiceps: UISwitch!
    @IBOutlet var switchTriceps: UISwitch!
    @IBOutlet var switchBack: UISwitch!
    @IBOutlet var switchLegs: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
  
    @IBAction func Stepper(_ sender: UIStepper) {
        let correctValue = Int(sender.value + 1)
        guard let valueBeforeUpdate = Int(numberOfStepper.text ?? "") else { return }
        
        
        if valueBeforeUpdate > correctValue {
            outletSegmentControl.removeSegment(at: correctValue, animated: true)
        }
        
        if  correctValue > valueBeforeUpdate {
            if sender.value == 1 {
                outletSegmentControl.insertSegment(withTitle: "Second", at: Int(sender.value), animated: true)
            } else {
                outletSegmentControl.insertSegment(withTitle: "Three", at: 2, animated: true)
            }
        }
        
        numberOfStepper.text = "\(correctValue)"
    }
    
    
    @IBAction func segmentControl(_ sender: Any) {
        
    }
    
}


