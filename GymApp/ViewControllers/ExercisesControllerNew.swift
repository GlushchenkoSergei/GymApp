//
//  ExercisesControllerNew.swift
//  GymApp
//
//  Created by mac on 23.04.2022.
//

import UIKit

class ExercisesControllerNew: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var mainTableView: UITableView!
    let exerciseTriceps = Exercise.getExercise(muscle: .triceps)
    let exerciseBiceps = Exercise.getExercise(muscle: .biceps)
    let exerciseLegs = Exercise.getExercise(muscle: .legs)
    let exerciseBack = Exercise.getExercise(muscle: .back)
    let exerciseBreast = Exercise.getExercise(muscle: .breast)
    
    //    Счетчик для положения segmentControl
    var numberOfSelected = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            numberOfSelected = 0
            mainTableView.reloadData()
        } else if sender.selectedSegmentIndex == 1 {
            numberOfSelected = 1
            mainTableView.reloadData()
        } else {
            numberOfSelected = 2
            mainTableView.reloadData()
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if numberOfSelected == 0 { return exerciseBiceps.count }
        if numberOfSelected == 1 { return exerciseLegs.count }
        if numberOfSelected == 2 { return exerciseBack.count }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if numberOfSelected == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "showExercises", for: indexPath)
            tableView.rowHeight = 80
            let text = exerciseBiceps[indexPath.row].description
            cell.textLabel?.text = text
            return cell
        }
        
        if numberOfSelected == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "showExercises", for: indexPath)
            tableView.rowHeight = 80
            let text = exerciseLegs[indexPath.row].description
            cell.textLabel?.text = text
            return cell
        }
        
        if numberOfSelected == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "showExercises", for: indexPath)
            tableView.rowHeight = 80
            let text = exerciseBack[indexPath.row].description
            cell.textLabel?.text = text
            return cell
        }
        
        // Заглушка для return
        let cell = tableView.dequeueReusableCell(withIdentifier: "showExercises", for: indexPath)
        return cell
    }
    
}

