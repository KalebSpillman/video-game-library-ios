//
//  libraryCell.swift
//  Video Game Library
//
//  Created by Kaleb Spillman on 11/1/18.
//  Copyright © 2018 Kaleb Spillman. All rights reserved.
//

import UIKit

class LibraryCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var genreLabel: UILabel!
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBOutlet weak var view: UIView!
    
   
    func setup (game: Game) {
        
        titleLabel.text = game.name
        genreLabel.text = game.genre
        ratingLabel.text = game.rating
        
        
        
    }
}



