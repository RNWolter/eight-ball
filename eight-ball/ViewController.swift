//
//  ViewController.swift
//  eight-ball
//
//  Created by Rick Wolter on 8/28/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var answers = ["yes","No","Maybe","Nope","Sure"]
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func flipEightBall(_ sender: Any) {
        
        let index = Int(arc4random_uniform(UInt32(answers.count)))
        
        let answer = answers[index]
        
        answerLabel.text = answer
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

