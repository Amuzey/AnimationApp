//
//  DataStore.swift
//  AnimationApp
//
//  Created by Алексей on 06.08.2022.
//

import Foundation
import SpringAnimation

class DataStore {
    
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    let curves = AnimationPreset.allCases
   
    
    private init () {}
}
