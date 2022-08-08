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
    @IBOutlet var animationLabel: UILabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        springAnimationView.layer.cornerRadius = 10
        animationButton.layer.cornerRadius = 10
    }
    
    @IBAction func animationButtonPresed() {
        animationLabel.text = animation.description
        
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.delay = animation.delay
        springAnimationView.duration = animation.duration
        springAnimationView.animate()
        
        animation = Animation.getAnimation()
        animationButton.setTitle("Run \(animation.preset)", for: .normal)
        
    }
}
