//
//  ConfirmHabitViewController.swift
//  Habitify
//
//  Created by Aman Meena on 27/04/20.
//  Copyright © 2020 Aman Meena. All rights reserved.
//

import UIKit

class ConfirmHabitViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUI()
    }
    
    // MARK:- IBOutlets
    
    @IBOutlet weak var habitImageView: UIImageView!
    @IBOutlet weak var habitTitle: UITextField!
    
    // MARK:- IBActions
    
    @IBAction func createHabitButtonPressed(_ sender: UIButton) {
        var persistanceLayer = PersistenceLayer()
        guard let habitText = habitTitle.text else { return }
        persistanceLayer.createNewHabit(name: habitText, image: habitImage)
        self.dismiss(animated: true, completion: nil)
    }
    
    
    // MARK:- Properties
    
    var habitImage: Habit.Images!
    
    
    // MARK:- Methods
    
    private func updateUI() {
        title = "New Habit"
        habitImageView.image = habitImage.image
    }
}
