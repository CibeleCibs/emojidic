//
//  DefinitionViewController.swift
//  Emoji Dictonary
//
//  Created by Cibele Bustamante on 23/03/17.
//  Copyright © 2017 Cibele Bustamante. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    var emoji = "no emoji"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        if emoji == "🙂" {
        definitionLabel.text = "smiley face"
        }
        if emoji == "😍" {
            definitionLabel.text = "smiley with heart eyes"
        }
        if emoji == "🤐" {
            definitionLabel.text = "smiley with mouth shut"
        }
        if emoji == "💀" {
            definitionLabel.text = "skull!"
        }
        if emoji == "👄" {
            definitionLabel.text = "sexy lips"
        }
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
