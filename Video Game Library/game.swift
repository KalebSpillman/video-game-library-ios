//
//  game.swift
//  Video Game Library
//
//  Created by Kaleb Spillman on 10/29/18.
//  Copyright © 2018 Kaleb Spillman. All rights reserved.
//

import Foundation
import DZNEmptyDataSet

class Game{
    var genre: String
    var rating: String
    var name: String
    var description: String
    var avalability: Bool = true
    var dueDate: Date? = nil
    
    init (genre: String, rating: String, name: String, description: String){
        
        self.genre = genre
        self.rating = rating
        self.name = name
        self.description = description
        
        
    }
    
}
