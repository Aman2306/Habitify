//
//  HabitImageCollectionViewCell.swift
//  Habitify
//
//  Created by Aman Meena on 27/04/20.
//  Copyright © 2020 Aman Meena. All rights reserved.
//

import UIKit

class HabitImageCollectionViewCell: UICollectionViewCell {

    /*
     Content mode of image view - Aspect Fill
     Content mode of Collection View Cell - Aspect Fit
     */
    static let identifier = "HabitImageCell"

    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    func setImage(image: UIImage, withSelection: Bool) {
        if withSelection {
            self.habitImage.image = image.withRenderingMode(.alwaysOriginal)
        } else {
            self.habitImage.image = image.withRenderingMode(.alwaysTemplate)
            self.habitImage.tintColor = UIColor.gray
        }
    }
    
    
    // MARK:- IBOutlets
    
    @IBOutlet weak var habitImage: UIImageView!
    
}
