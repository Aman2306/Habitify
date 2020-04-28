//
//  HabitDetailViewController.swift
//  Habitify
//
//  Created by Aman Meena on 28/04/20.
//  Copyright © 2020 Aman Meena. All rights reserved.
//

import UIKit

class HabitDetailViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUI()
    }
    
    // MARK:- Properties
    
    var habit: Habit!
    var habitIndex: Int!
    
    private var persistance = PersistenceLayer()
    
    // MARK:- Methods
    
    func updateUI() {
        title = habit.title
        imageViewIcon.image = habit.selectedImage.image
        
        let dayOrDays = habit.currentStreak
        
        if dayOrDays < 2 {
            labelCurrentStreak.text = "\(habit.currentStreak) day"
        } else {
            labelCurrentStreak.text = "\(habit.currentStreak) days"
        }
        labelTotalCompletions.text = String(habit.numberOfCompletions)
        labelBestStreak.text = String(habit.bestStreak)
        labelStartingDate.text = habit.dateCreated.stringValue
        
        if habit.completedToday {
            buttonAction.setTitle("Completed for Today!", for: .normal)
        } else {
            buttonAction.setTitle("Mark as Completed", for: .normal)
        }
    }
    
    // MARK:- IBOutlets
    @IBOutlet weak var imageViewIcon: UIImageView!
    @IBOutlet weak var labelCurrentStreak: UILabel!
    @IBOutlet weak var labelTotalCompletions: UILabel!
    @IBOutlet weak var labelBestStreak: UILabel!
    @IBOutlet weak var labelStartingDate: UILabel!
    @IBOutlet weak var buttonAction: UIButton!
    
    
    @IBAction func pressActionButton(_ sender: UIButton) {
        habit = persistance.markHabitAsCompleted(habitIndex)
        updateUI()
    }
    
}
