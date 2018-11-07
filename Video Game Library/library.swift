//
//  library.swift
//  Video Game Library
//
//  Created by Kaleb Spillman on 10/29/18.
//  Copyright © 2018 Kaleb Spillman. All rights reserved.
//

import Foundation

class Library {
    static let sharedInstance = Library()
    
    var games = [Game]()
}
