//
//  library viewcontroller.swift
//  Video Game Library
//
//  Created by Kaleb Spillman on 10/29/18.
//  Copyright © 2018 Kaleb Spillman. All rights reserved.
//

import UIKit

class LibraryViewController: UIViewController {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var library = Library.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        library.games.append(Game(genre: "BattleRoyale", rating: "teen", name: "fortnite", description: "Battle Royale"))
    }
    
    
    
    func checkOut(indexPath: IndexPath) {
        let game = library.games[indexPath.row]
        game.avalability = false
    }
    func  checkIn(indexPath: IndexPath)  {
        let game = library.games[indexPath.row]
        game.avalability = true
    }
    
    
}
extension LibraryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return
            library.games.count
        
    }
    
    
    func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! LibraryCell
        
        let game = library.games[indexPath.row]
        
        cell.setup (game: game)
        
        
        tableView.reloadData()
        return cell
        
    }
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") { _, indexPath in
            Library.sharedInstance.games.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        
        let game = library.games[indexPath.row]
        
        if game.avalability == true{
            let checkOutAction = UITableViewRowAction(style: .default, title: "Check Out") { _, indexPath in
                self.checkOut(indexPath: indexPath)
            }
        }
        
        return [deleteAction]
    }
    
}
