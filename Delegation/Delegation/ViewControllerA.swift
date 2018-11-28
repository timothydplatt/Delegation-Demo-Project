//
//  ViewController.swift
//  Delegation
//
//  Created by Timothy Platt on 26/11/2018.
//  Copyright © 2018 Timothy Platt. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController {

    @IBOutlet weak var uiView: UIView!
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SliderEmbedSegue" {

            guard let viewController = segue.destination as? ViewControllerB else { return }
            viewController.delegate = self
        }
    }

}

extension ViewControllerA: ViewControllerBDelegate {

    func updateAlpha(value: Float) {
        uiView.alpha = CGFloat(value)
        label.text = "The alpha is \(value)"
    }

}
