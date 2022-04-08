//
//  DataManager.swift
//  AnimationApp
//
//  Created by Masaie on 8/4/22.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
    
}
