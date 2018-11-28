//
//  ViewControllerB.swift
//  Delegation
//
//  Created by Timothy Platt on 26/11/2018.
//  Copyright © 2018 Timothy Platt. All rights reserved.
//

import UIKit

protocol ViewControllerBDelegate: AnyObject {
    func updateAlpha(value: Float)
}

class ViewControllerB: UIViewController {

    weak var delegate: ViewControllerBDelegate?

    @IBOutlet weak var sliderOutlet: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func sliderAction(_ sender: UISlider) {

        let sliderValue = roundf(sliderOutlet.value)
        sliderOutlet.setValue(sliderValue, animated: true)
        delegate?.updateAlpha(value: sliderValue/10)
        print(sliderValue/10)
    }

}
