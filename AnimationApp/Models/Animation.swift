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
    
    static func getAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.preset.randomElement() ?? "pop",
            curve: DataStore.shared.curves.randomElement() ?? "easeIn",
            force: CGFloat.random(in: 0...3),
            delay: 0.3,
            duration: CGFloat.random(in: 0...3)
        )
    }
}
