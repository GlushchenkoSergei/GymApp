//
//  SettingsViewController.swift
//  GymApp
//
//  Created by mac on 24.04.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    private let userDefaults = UserDefaults.standard

    @IBOutlet var numberOfStepper: UILabel!
//    @IBOutlet var defaultStepper: UIStepper!
    
    @IBOutlet var outletSegmentControl: UISegmentedControl!
    
//    @IBOutlet var switchBreast: UISwitch!
//    @IBOutlet var switchBiceps: UISwitch!
//    @IBOutlet var switchTriceps: UISwitch!
//    @IBOutlet var switchBack: UISwitch!
//    @IBOutlet var switchLegs: UISwitch!
    
    @IBOutlet var muscleSwitches: [MuscleSwitch]!
    
    private var muscleGroup = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        muscleSwitches[0].type = .breast
        muscleSwitches[1].type = .biceps
        muscleSwitches[2].type = .triceps
        muscleSwitches[3].type = .back
        muscleSwitches[4].type = .legs
        
        selectSegment()
        
        
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
        selectSegment()
    }
    
    private func selectSegment() {
        let currentSegment = outletSegmentControl.selectedSegmentIndex
        guard let titleCurrenSegment = outletSegmentControl.titleForSegment(at: currentSegment) else { return }
        let currentMuscle = userDefaults.array(forKey: titleCurrenSegment) as! [String]
        for muscleSwitch in muscleSwitches {
            if currentMuscle.contains(muscleSwitch.type.rawValue) {
                muscleSwitch.isOn = true
            } else {
                muscleSwitch.isOn = false
            }
        }
    }
    
    @IBAction func tapSaveButton() {
        let currentSegment = outletSegmentControl.selectedSegmentIndex
        guard let titleCurrenSegment = outletSegmentControl.titleForSegment(at: currentSegment) else { return }
        setupMuscleGroup()
        userDefaults.setValue(muscleGroup, forKey: titleCurrenSegment)
    }
    
    private func setupMuscleGroup() {
        muscleGroup.removeAll()
        for muscleSwitch in muscleSwitches {
            if muscleSwitch.isOn {
                muscleGroup.append(muscleSwitch.type.rawValue)
            }
        }
    }
    
}


