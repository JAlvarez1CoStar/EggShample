//
//  ViewController.swift
//  MyEggShample
//
//  Created by jalvarez1CoStar on 12/18/2017.
//  Copyright (c) 2017 jalvarez1CoStar. All rights reserved.
//

import UIKit
import MyEggShample

class ViewController: UIViewController {

    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect(x: 10, y: 100, width: 200, height: 300))

    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true

        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRect(x: 240, y: 160, width: 125, height: 30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action: Selector(("toggleBlinking")), for: .touchUpInside)
        view.addSubview(toggleButton)

        let sampleView = SampleView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.addSubview(sampleView)
    }

    func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }

}
