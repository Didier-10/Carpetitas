//
//  ViewController.swift
//  Colormix_bueno
//
//  Created by Daniel Alejandro on 9/3/19.
//  Copyright © 2019 Daniel Alejandro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var RedSlider: UISlider!
    @IBOutlet weak var GreenSlider: UISlider!
    @IBOutlet weak var BlueSlider: UISlider!
    @IBAction func ResetButton(_ sender: Any) {
        restartColor()
        updateColors()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restartColor()
        updateColors()
    }

    @IBAction func switchChanged(_ sender: UISwitch!) {
        updateColors()
    }
    
    @IBAction func SliderChanged(_ sender: UISlider) {
        updateColors()
    }
    func updateColors(){
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn{
            red = CGFloat(RedSlider.value)
        }
        if greenSwitch.isOn{
            green = CGFloat(GreenSlider.value)
        }
        if blueSwitch.isOn{
            blue = CGFloat(BlueSlider.value)
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    func restartColor(){
    redSwitch.isOn = false
    greenSwitch.isOn = false
    blueSwitch.isOn = false
    RedSlider.value = 0
    GreenSlider.value = 0
    BlueSlider.value = 0
    }
}

