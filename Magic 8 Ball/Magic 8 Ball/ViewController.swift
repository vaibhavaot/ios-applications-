//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Mhatre    on 3/22/19.
//  Copyright © 2019 Mhatre. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber: Int = 2
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var fortuneButtonPressed: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
      
    }
    @IBAction func fortuneButtonPressed(_ sender: Any)
    {
        newBallImage()
    }
    
    func newBallImage()
    {
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        newBallImage()
    }
    


}

