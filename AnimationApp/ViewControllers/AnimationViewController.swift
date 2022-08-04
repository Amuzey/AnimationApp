//
//  ViewController.swift
//  AnimationApp
//
//  Created by Алексей on 04.08.2022.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var springAnimationButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springAnimationView.layer.cornerRadius = 15
        springAnimationButton.layer.cornerRadius = 15
        
    }

    
    

    @IBAction func springButtonPresed(_ sender: SpringButton) {
    }
}

