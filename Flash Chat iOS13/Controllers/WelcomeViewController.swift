//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Display Flash Chat Text
        titleLabel.text = ""
        var textInterval = 0.0
        let titleText = "⚡️FlashChat"
        
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * textInterval, repeats: false) { timer in
                self.titleLabel.text!.append(letter)
            }
            textInterval += 1
        }
    }
    
    @IBAction func showWelcome(segue: UIStoryboardSegue) {
        
    }
    
}//End Of The Class

