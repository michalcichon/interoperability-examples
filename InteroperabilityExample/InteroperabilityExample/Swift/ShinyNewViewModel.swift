//
//  ShinyNewViewModel.swift
//  InteroperabilityExample
//
//  Created by Michał Cichoń on 08/11/2022.
//

import Foundation

@objc class ShinyNewViewModel: NSObject {
    @objc var justANumber = 42.0
    @objc var legacy: LegacyViewModel?
    
    func multiplyIfPossible() -> Double? {
        guard let legacy else { return nil }
        let m = legacy.multiply()
        return m as? Double
    }
}
