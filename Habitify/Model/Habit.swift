//
//  Habit.swift
//  Habitify
//
//  Created by Aman Meena on 25/04/20.
//  Copyright © 2020 Aman Meena. All rights reserved.
//

import UIKit

struct Habit: Codable {

    var title: String
    let dateCreated: Date = Date()
    var selectedImage: Habit.Images
    
    var currentStreak: Int = 0
    var bestStreak: Int = 0
    var lastCompletionDate: Date?
    var numberOfCompletions: Int = 0
    
    var completedToday: Bool {
        return lastCompletionDate?.isToday ?? false
    }
//    I wonder why bestStreak and numberOfCompletions are not optional
    
    init(title: String, image: Habit.Images) {
        self.title = title
        self.selectedImage = image
    }
    
    
    enum Images: Int, Codable, CaseIterable {
//        CaseIterable -> helps us by giving us a class property that returns all the cases in the enum, i.e. returns an array
        case book
        case bulb
        case clock
        case code
        case drop
        case food
        case grow
        case gym
        case heart
        case lotus
        case other
        case pet
        case pill
        case search
        case sleep
        case tooth

        var image: UIImage {
            guard let image = UIImage(named: String(describing: self)) else {
                fatalError("image \(self) not found")
            }

            return image
        }
    }

}
