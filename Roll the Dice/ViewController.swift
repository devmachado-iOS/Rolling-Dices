//
//  ViewController.swift
//  Roll the Dice
//
//  Created by Carlos  Machado on 02/01/2018.
//  Copyright © 2018 DevMyShadow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dadoImgView1: UIImageView!
    @IBOutlet weak var dadoImgView2: UIImageView!
    
    
    
    var diceNumberOne: Int = 0
    var diceNumberTwo: Int = 0
    let diceArray: [String] = ["1","2","3","4","5","6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func jogarDados(_ sender: Any) {
        
        diceNumberOne = Int(arc4random_uniform(6))
        diceNumberTwo = Int(arc4random_uniform(6))
        
        print("Dado 1: \(diceNumberOne)")
        print("Dado 2: \(diceNumberTwo)")
        
        dadoImgView1.image = UIImage(named:diceArray[diceNumberOne])
        dadoImgView2.image = UIImage(named:diceArray[diceNumberTwo])
        
        
    }
    
    
}

