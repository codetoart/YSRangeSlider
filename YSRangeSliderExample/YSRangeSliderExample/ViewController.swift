//
//  ViewController.swift
//  YSRangeSliderExample
//
//  Created by Laurentiu Ungur on 04/02/16.
//  Copyright © 2016 Yardi. All rights reserved.
//

import UIKit
import YSRangeSlider

class ViewController: UIViewController {
    @IBOutlet weak var rangeSlider: YSRangeSlider!
    @IBOutlet weak var stepsSwitch: UISwitch!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rangeSlider.delegate = self
        stepsSwitch.addTarget(self, action: #selector(switchChanged), for: .valueChanged)
    }
    
    func switchChanged(_ sender: UISwitch) {
        rangeSlider.step = sender.isOn ? 0.1 : 0.0
    }
}

// MARK: - YSRangeSliderDelegate

extension ViewController: YSRangeSliderDelegate {
    func rangeSliderDidChange(_ rangeSlider: YSRangeSlider, minimumSelectedValue: CGFloat, maximumSelectedValue: CGFloat) {
        label.text = "From \(minimumSelectedValue) to \(maximumSelectedValue)"
    }
}
