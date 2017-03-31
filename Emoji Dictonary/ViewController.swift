//
//  ViewController.swift
//  Emoji Dictonary
//
//  Created by Cibele Bustamante on 22/03/17.
//  Copyright © 2017 Cibele Bustamante. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.dataSource = self
        tableview.delegate = self
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        // makes the text equal to the emoji located in the array emojis whose index is equal to the numer of the row it is contained
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableview.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "mySegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        
        //tying defVC with emoji (on DefinitionViewController.swift) and the sender in this file.
        
        defVC.emoji = sender as! Emoji
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🙂"
        emoji1.category = "smiley"
        emoji1.definition = "smiley smiley"
        emoji1.birthYear = 1990
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😍"
        emoji2.category = "smiley"
        emoji2.definition = "smiley with heart eyes"
        emoji2.birthYear = 2000
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤐"
        emoji3.category = "smiley"
        emoji3.definition = "smiley with zipped up mouth"
        emoji3.birthYear = 2007
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👄"
        emoji4.category = "bla"
        emoji4.definition = "sexy kiss"
        emoji4.birthYear = 2010
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "💀"
        emoji5.category = "holidays"
        emoji5.definition = "HAloween skull"
        emoji5.birthYear = 2004

        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]

    }

}

