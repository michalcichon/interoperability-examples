//
//  ViewController.swift
//  InteroperabilityExample
//
//  Created by Michał Cichoń on 05/11/2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let vm = ShinyNewViewModel()

    @IBOutlet weak var objcLabel: UILabel!
    @IBOutlet weak var asmLabel: UILabel!
    @IBOutlet weak var jsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vm.legacy = LegacyViewModel()
        vm.legacy?.number = 21 as NSNumber
        objcLabel.text = "\(vm.multiplyIfPossible() ?? 0)"
        asmLabel.text = "\(addInAssembly(2, 40))"
        
        let jsWrapper = BubbleSortWrapper()
        let sortedNumbers = jsWrapper.sort(arr: [0, 3, 1, 5, 2,13, 8])
        jsLabel.text = sortedNumbers.map({String($0)}).joined(separator: ", ")
    }


}

