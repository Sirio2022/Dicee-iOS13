//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit 

class ViewController: UIViewController {

    // IBOulet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // WHO          WHAT       VALUE
        // diceImageView1.image = #imageLiteral(resourceName: "DiceSix") // Shift + cmd + L then Drag and Drop here.
        // diceImageView1.alpha = 0.5 // Here, we change the alpha, which is the transparency.
        
        // diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
        // diceImageView2.alpha = 0.5
        
        
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
        // diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
        
        diceImageView1.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][leftDiceNumber]
        leftDiceNumber += 1
        
        diceImageView2.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][rightDiceNumber]
        rightDiceNumber -= 1
        
        
    }
    
}

