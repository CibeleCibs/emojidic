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
    
    
    @IBOutlet weak var categoryLabel: UILabel!

    @IBOutlet weak var yearLabel: UILabel!
    
    
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        yearLabel.text = "Birth Year : \(emoji.birthYear)"
        categoryLabel.text = emoji.category
        definitionLabel.text = emoji.definition
        
        
        
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
