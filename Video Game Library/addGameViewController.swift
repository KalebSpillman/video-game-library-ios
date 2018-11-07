//
//  addGameViewController.swift
//  Video Game Library
//
//  Created by Kaleb Spillman on 10/31addGameViewController/18.
//  Copyright © 2018 Kaleb Spillman. All rights reserved.
//

import UIKit

class AddGame: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBOutlet weak var segmentedController: UISegmentedControl!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var addGameButton: UIButton!
    
    var newGame: Game?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self as! UIPickerViewDelegate
        self.pickerView.dataSource = self as! UIPickerViewDataSource
        
    }
    
    
    
    let genres = ["action", "adventure", "role play", "simulation", "stratagy", "sports", "shooting", "battle royale"]
    
    @IBAction func addGameTapped(_ sender: Any) {
        guard
            let title = titleTextField.text, !title.isEmpty,
            let description = descriptionTextView.text, !description.isEmpty
        

        else {
            let errorAlert = UIAlertController(title: "Error", message: "please fill out all fields", preferredStyle: UIAlertController.Style.alert)
            let dismissAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) {UIAlertAction in}
            errorAlert.addAction(dismissAction)
            self.present(errorAlert, animated: true, completion: nil)
            return
        }
        let pickerView =  genres[self.pickerView.selectedRow(inComponent: 0)]
        newGame = Game(genre: pickerView, rating: pickerView, name: title, description: description)
        performSegue(withIdentifier: "unwindToQuizScreen", sender: self)
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            let destinationVC = segue.destination as? AddGame,
            let newVideoGame = newGame
            else {return}
        
}
}
        
        
        
        
        
        
        extension
        
        AddGame: UIPickerViewDataSource, UIPickerViewDelegate {
            
            func numberOfComponents(in pickerView: UIPickerView) -> Int {
                return 1
            }
            
            
            
            
            func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
                return genres.count
            }
            
            func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
                return genres[row]
            }
}


