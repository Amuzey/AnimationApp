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
        animationButton.layer.cornerRadius = 10
        
    }

    
    

    @IBAction func animationButtonPresed() {
        
        let randomAnimation = animations.randomElement()
        
        guard let preset = randomAnimation?.preset else { return }
        guard let curve = randomAnimation?.curve else { return }
        guard let force = randomAnimation?.force else { return }
        guard let delay = randomAnimation?.delay else { return }
        guard let duration = randomAnimation?.duration else { return }
        springAnimationView.animation = preset
        springAnimationView.delay = delay
        springAnimationView.force = force
        springAnimationView.duration = duration
        springAnimationView.curve = curve
        animationLabel.text = """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2F", force))
        delay: \(String(format: "%.2F", delay))
        duration: \(String(format: "%.2F", duration))
        """
        springAnimationView.animate()
        }
       
    }


