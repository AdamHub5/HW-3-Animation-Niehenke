//
//  ViewController.swift
//  HW 3 Animation Niehenke
//
//  Created by Adam Niehenke on 2/20/20.
//  Copyright © 2020 Adam Niehenke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Declare outlets
    @IBOutlet weak var bunnyView: UIImageView!
    
    @IBOutlet weak var speed: UISlider!
    
    @IBOutlet weak var back: UIImageView!
    
    //Button will start or stop the animation
    @IBAction func animationButton(_ sender: Any) {
        if (bunnyView.isAnimating)
        {
            bunnyView.stopAnimating()
        } else
        {
            bunnyView.startAnimating()
        }
    }
    //Show or hide background image
    @IBAction func backgroundButton(_ sender: Any) {
        if back.isHidden == true {
            back.isHidden = false
        } else {
            back.isHidden = true
        }
    }
    //control speed of bunny with slider
    @IBAction func slider(_ sender: Any) {
        bunnyView.animationDuration=TimeInterval(3.0-speed.value)
        bunnyView.startAnimating()
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
    //Animate the bunny
    let hopAnimation: [UIImage] = [
            UIImage(named: "frame-1")!,
            UIImage(named: "frame-2")!,
            UIImage(named: "frame-3")!,
            UIImage(named: "frame-4")!,
            UIImage(named: "frame-5")!,
            UIImage(named: "frame-6")!,
            UIImage(named: "frame-7")!,
            UIImage(named: "frame-8")!,
            UIImage(named: "frame-9")!,
            UIImage(named: "frame-10")!,
            UIImage(named: "frame-11")!,
            UIImage(named: "frame-12")!,
            UIImage(named: "frame-13")!,
            UIImage(named: "frame-14")!,
            UIImage(named: "frame-15")!,
            UIImage(named: "frame-16")!,
            UIImage(named: "frame-17")!,
            UIImage(named: "frame-18")!,
            UIImage(named: "frame-19")!,
            UIImage(named: "frame-20")!,
            ]
        
        bunnyView.animationImages=hopAnimation
        bunnyView.animationDuration=1.0
        //bunnyView.startAnimating()
        
        
    
    
    
    
    
    }


}

