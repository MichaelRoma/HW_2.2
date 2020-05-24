//
//  ViewController.swift
//  HW_2.2
//
//  Created by Mykhailo Romanovskyi on 24.05.2020.
//  Copyright © 2020 Mykhailo Romanovskyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewScreen: UIView!
    
    @IBOutlet weak var redLabelCounter: UILabel!
    @IBOutlet weak var greenLabelCounter: UILabel!
    @IBOutlet weak var blueLabelCounter: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    let numberFormater = NumberFormatter()
    var viewColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberFormater.minimumFractionDigits = 2
        
        redLabelCounter.text = numberFormater.string(from: NSNumber(value: redSlider.value))
        greenLabelCounter.text = numberFormater.string(from: NSNumber(value: greenSlider.value))
        blueLabelCounter.text = numberFormater.string(from: NSNumber(value: blueSlider.value))
        
        viewColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        viewScreen.backgroundColor = viewColor
        
    }
    
    @IBAction func redAction(_ sender: Any) {
        redLabelCounter.text = numberFormater.string(from: NSNumber(value: redSlider.value))
        colorChange()
    }
    
    @IBAction func greenAction(_ sender: Any) {
        greenLabelCounter.text = numberFormater.string(from: NSNumber(value: greenSlider.value))
        colorChange()
    }
    
    @IBAction func blueAction(_ sender: Any) {
        blueLabelCounter.text = numberFormater.string(from: NSNumber(value: blueSlider.value))
        colorChange()
    }
    
    private func colorChange() {
        viewColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        viewScreen.backgroundColor = viewColor
    }
    
}

