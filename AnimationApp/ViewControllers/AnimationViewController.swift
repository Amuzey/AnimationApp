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
    
    private var animation = Animation.getAnimation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springAnimationView.layer.cornerRadius = 10
        animationButton.layer.cornerRadius = 10
        setupAnimationLabel(animation)
        
        
        
    }
    
    @IBAction func animationButtonPresed() {
        setupAnimation(animation)
        setupAnimationLabel(animation)
        animation = Animation.getAnimation()
        animationButton.setTitle("Run \(animation.preset)", for: .normal)
        springAnimationView.animate()
        
    }
    
    private func setupAnimationLabel(_ animation: Animation) {
        animationLabel.text = """
                preset: \(animation.preset)
                curve: \(animation.curve)
                force: \(String(format: "%.2F", animation.force))
                delay: \(String(format: "%.2F", animation.delay))
                duration: \(String(format: "%.2F", animation.duration))
                """
    }
    private func setupAnimation(_ animation: Animation) {

        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.delay = animation.delay
        springAnimationView.duration = animation.duration
    }
}





  




