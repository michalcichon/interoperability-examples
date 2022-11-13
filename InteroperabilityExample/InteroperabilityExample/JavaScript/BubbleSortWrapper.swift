//
//  BubbleSortWrapper.swift
//  InteroperabilityExample
//
//  Created by Michał Cichoń on 08/11/2022.
//

import Foundation
import JavaScriptCore

class BubbleSortWrapper {
    
    let context = JSContext()!
    
    init() {
        if let path = Bundle.main.path(forResource: "BubbleSort", ofType:"js") {
            let scriptCode = try! String(contentsOfFile: path)
            context.evaluateScript(scriptCode)
        }
    }
    
    func sort(arr: [Int]) -> [Int] {
        let bubbleSort = context.objectForKeyedSubscript("bubbleSort")
        let sortedArray = bubbleSort?.call(withArguments: [arr]).toArray() as? [Int]
        return sortedArray ?? []
    }
}
