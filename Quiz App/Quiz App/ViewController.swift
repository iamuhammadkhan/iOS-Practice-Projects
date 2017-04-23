//
//  ViewController.swift
//  Quiz App
//
//  Created by MK on 22/04/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let questions = ["Which one is your favourite pet?", "Which one is your favourute color", "Where were you born"]
    let answers = [["Cat", "Dog", "Bird"], ["Yellow", "Green", "Blue"], ["Karachi", "Lahore", "Islamabad"]]
    
    var currentQuestion = 0
    var rightAnswerPlacement: UInt32 = 0
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func actionBtn(_ sender: Any) {
        if ((sender as AnyObject).tag == Int(rightAnswerPlacement)) {
            labelTwo.text! = "Right!"
        }
        else {
            labelTwo.text! = "Wrong!"
        }
        if (currentQuestion != questions.count) {
            newQuestion()
        }
        else {
            labelTwo.text! = "Game Over!"
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        newQuestion()
    }
    
    func newQuestion() {
        
        labelOne.text = questions[currentQuestion]
        
        rightAnswerPlacement = arc4random_uniform(3)+1
        
        var button:UIButton = UIButton()
        
        var x = 1
        
        for i in 1...3 {
            
            button = view.viewWithTag(i) as! UIButton
            
            if (i == Int(rightAnswerPlacement)) {
                button.setTitle(answers[currentQuestion][0], for: .normal)
            }
            else {
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x = 2
            }
        }
         currentQuestion += 1
    }
    
}

