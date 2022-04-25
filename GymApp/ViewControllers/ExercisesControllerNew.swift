//
//  ExercisesControllerNew.swift
//  GymApp
//
//  Created by mac on 23.04.2022.
//

import UIKit

protocol ExercisesControllerProtocol {
    func saveExercise(exercise: Exercise)
}

class ExercisesControllerNew: UIViewController, ExercisesControllerProtocol {
    
    @IBOutlet var mainTableView: UITableView!
    
    @IBOutlet weak var sc: UISegmentedControl!
    private let userDefaults = UserDefaults.standard
    
    let exercises = DataManage.shared.exercises
    var selectedExercises = [Exercise]()
    var exercisesForSaved = [Exercise]()

    var numberOfSelected = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeExercise(muscles: [.breast, .triceps])
        mainTableView.rowHeight = 80
    }
    
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        
        selectExercise()
        mainTableView.reloadData()
    }
    
    private func selectExercise() {
        guard let titleSegment = sc.titleForSegment(at: sc.selectedSegmentIndex) else { return }
        print(userDefaults.array(forKey: titleSegment))
        let muscleGroupStrings = userDefaults.array(forKey: titleSegment) as! [String]
        var muscleGroup = [MuscleGroup]()
        for muscle in muscleGroupStrings {
            muscleGroup.append(MuscleGroup(rawValue: muscle)!)
        }
        print(muscleGroup)
        changeExercise(muscles: muscleGroup)
    }
    
    private func changeExercise(muscles: [MuscleGroup])  {
        selectedExercises.removeAll()
        
        for muscle in muscles {
            for exercise in exercises {
                if exercise.muscle == muscle {
                    selectedExercises.append(exercise)
                }
            }
        }
    }
    
//    private func selectExercise() {
//        switch numberOfSelected {
//        case 1:
//            changeExercise(muscles: [.back, .biceps])
//        case 2:
//            changeExercise(muscles: [.legs])
//        default :
//            changeExercise(muscles: [.breast, .triceps])
//        }
//    }
    
    func saveExercise(exercise: Exercise) {
        exercisesForSaved.append(exercise)
    }
    
    func addExerciseToJournal() {
        // здесь надо реализовать метод сохранения в журнал
    }
    
   // действие по нажатию (отмена выделения)
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }


    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailController else { return }
        guard let indexPath = mainTableView.indexPathForSelectedRow else { return }
        detailVC.exercise = selectedExercises[indexPath.row]
        detailVC.delegate = self
    }
    
}

extension ExercisesControllerNew: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        selectedExercises.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "showExercises", for: indexPath)
        
        let exercises = selectedExercises[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.textProperties.color = customColor()
        content.secondaryTextProperties.color = .gray
        content.text = exercises.description
        content.secondaryText = exercises.numberOfRepetitions
        content.image = UIImage(named: exercises.image)
        cell.contentConfiguration = content
        
        return cell
    }
    
}

extension ExercisesControllerNew {
    func customColor() -> UIColor {
        UIColor(red: 0/255, green: 169/255, blue: 209/255, alpha: 1)
    }
}


