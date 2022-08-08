//
//  Animation.swift
//  AnimationApp
//
//  Created by Алексей on 05.08.2022.
//

import Foundation

struct Animation {
    
    let preset: String
    let curve: String
    let force: Double
    let delay: Double
    let duration: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2F", force))
        delay: \(String(format: "%.2F", delay))
        duration: \(String(format: "%.2F", duration))
        """
    }
    
    static func getAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.presets.randomElement()?.rawValue ?? "pop",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 0...3),
            delay: 0.3,
            duration: Double.random(in: 0...3)
        )
    }
}
