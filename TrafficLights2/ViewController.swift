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
    }
    
}

