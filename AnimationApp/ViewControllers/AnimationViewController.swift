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
    @IBOutlet var animationButton: UIButton!
    @IBOutlet var animationLabel: UILabel!
    
    private let animations = Animation.getAnimation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springAnimationView.layer.cornerRadius = 15
        animationButton.layer.cornerRadius = 15
        
    }

    
    

    @IBAction func animationButtonPresed() {
        
    }
}

