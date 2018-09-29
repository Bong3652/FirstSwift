//
//  BirdViewController.swift
//  HelloSwift
//
//  Created by APPLE on 9/29/18.
//  Copyright © 2018 Bong. All rights reserved.
//

import UIKit

class BirdViewController: UIViewController {
    
    @IBOutlet weak var birdScoll: UIScrollView!
    var birdImages = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var contentWidth: CGFloat = 0.0
        
        for i in 1...6 {
            let bird = UIImage(named: "icon\(i).png")
            let birdView = UIImageView(image: bird)
            birdImages.append(birdView)
            
            var newX: CGFloat = 0.0
            
            newX = view.frame.midX + view.frame.size.width * CGFloat(i)
            
            contentWidth += newX
            
            birdScoll.addSubview(birdView)
            
            birdView.frame = CGRect(x: newX - 75, y: (view.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
        birdScoll.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        // Do any additional setup after loading the view.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
