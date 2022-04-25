//
//  SettingsViewController.swift
//  GymApp
//
//  Created by mac on 24.04.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let userDefaults = UserDefaults.standard

    @IBOutlet var numberOfStepper: UILabel!
//    @IBOutlet var defaultStepper: UIStepper!
    
    @IBOutlet var outletSegmentControl: UISegmentedControl!
    
//    @IBOutlet var switchBreast: UISwitch!
//    @IBOutlet var switchBiceps: UISwitch!
//    @IBOutlet var switchTriceps: UISwitch!
//    @IBOutlet var switchBack: UISwitch!
//    @IBOutlet var switchLegs: UISwitch!
    
    @IBOutlet var MuscleSwitches: [MuscleSwitch]!
    
    var muscleGroup: [MuscleGroup]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MuscleSwitches[0].type = .breast
        MuscleSwitches[1].type = .biceps
        MuscleSwitches[2].type = .triceps
        MuscleSwitches[3].type = .back
        MuscleSwitches[4].type = .legs
    }
    
  
    @IBAction func Stepper(_ sender: UIStepper) {
        let correctValue = Int(sender.value + 1)
        guard let valueBeforeUpdate = Int(numberOfStepper.text ?? "") else { return }
        
        if valueBeforeUpdate > correctValue {
            outletSegmentControl.removeSegment(at: correctValue, animated: true)
        }
        if  correctValue > valueBeforeUpdate {
            if sender.value == 1 {
                outletSegmentControl.insertSegment(withTitle: "Second", at: 1, animated: true)
            } else {
                outletSegmentControl.insertSegment(withTitle: "Three", at: 2, animated: true)
            }
        }
        
        numberOfStepper.text = "\(correctValue)"
    }
    
    
    @IBAction func segmentControl(_ sender: Any) {
        
    }
    
    @IBAction func tapSaveButton() {
        let currentSegment = outletSegmentControl.selectedSegmentIndex
        guard let titleCurrenSegment = outletSegmentControl.titleForSegment(at: currentSegment) else { return }
        userDefaults.setValue(muscleGroup, forKey: titleCurrenSegment)
    }
    
    private func setupMuscleGroup() {
        muscleGroup.removeAll()
        for muscleSwitch in MuscleSwitches {
            if muscleSwitch.isOn {
                muscleGroup.append(muscleSwitch.type)
            }
        }
    }
    
}


