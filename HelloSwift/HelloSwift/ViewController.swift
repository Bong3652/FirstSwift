//
//  ViewController.swift
//  HelloSwift
//
//  Created by APPLE on 9/14/18.
//  Copyright © 2018 Bong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bg: UIImageView!
    
    @IBOutlet weak var heading: UIImageView!
    
    @IBOutlet weak var bird: UIImageView!
    
    @IBOutlet weak var welcomebtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func welcomepress(_ sender: Any) {
        bg.isHidden=false
        heading.isHidden=false
        bird.isHidden=false
        welcomebtn.isHidden=true
    }
    var food = "PIE"
}


