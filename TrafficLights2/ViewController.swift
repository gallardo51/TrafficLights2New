//
//  ViewController.swift
//  TrafficLights2
//
//  Created by Александр Соболев on 03.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLightLabelView: UIView!
    @IBOutlet weak var yellowLightLabelView: UIView!
    @IBOutlet weak var greenLightLabelView: UIView!
    
    @IBOutlet weak var startButtonLabelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightLabelView.alpha = 0.3
        yellowLightLabelView.alpha = 0.3
        greenLightLabelView.alpha = 0.3
        
        redLightLabelView.layer.cornerRadius = redLightLabelView.frame.width / 2
        yellowLightLabelView.layer.cornerRadius = yellowLightLabelView.frame.width / 2
        greenLightLabelView.layer.cornerRadius = greenLightLabelView.frame.width / 2
        
        startButtonLabelButton.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonPressed() {
        
        if isLightOn(redLightLabelView) {
            redLightLabelView.alpha = 0.3
            yellowLightLabelView.alpha = 1
        } else if isLightOn(yellowLightLabelView) {
            yellowLightLabelView.alpha = 0.3
            greenLightLabelView.alpha = 1
        } else {
            greenLightLabelView.alpha = 0.3
            redLightLabelView.alpha = 1
        }
        
        if startButtonLabelButton.currentTitle == "START" {
            startButtonLabelButton.setTitle("NEXT", for: .normal)
        }
    }
        
        func isLightOn (_ color: UIView) -> Bool {
            color.alpha == 1 ? true : false
        }
    }


