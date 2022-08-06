//
//  Animation.swift
//  AnimationApp
//
//  Created by Алексей on 05.08.2022.
//

import Foundation
import CoreGraphics

struct Animation {
    
    let preset: String
    let curve: String
    let force: CGFloat
    let delay: CGFloat
    let duration: CGFloat
}

extension Animation {
    static func getAnimation() -> [Animation] {
        var animations: [Animation] = []
        
        let iterationCount = min(
            DataStore.shared.preset.count,
            DataStore.shared.curves.count
        )
        
        for _ in 0..<iterationCount {
            let animation = Animation(
                preset: DataStore.shared.preset.randomElement() ?? "default value",
                curve: DataStore.shared.curves.randomElement() ?? "default value",
                force: CGFloat.random(in: 0...3),
                delay: 0.3,
                duration: CGFloat.random(in: 0...3)
            )
            animations.append(animation)
        }
        return animations
    }
}
