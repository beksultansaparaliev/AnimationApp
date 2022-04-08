//
//  Animation.swift
//  AnimationApp
//
//  Created by Masaie on 6/4/22.
//

struct Animation {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f",force))
        duration: \(String(format: "%.02f",duration))
        delay: \(String(format: "%.02f",delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: DataManager.shared.animations.randomElement()?.rawValue ?? "morph",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.8...1.6),
            delay: 0.3
        )
    }
}
