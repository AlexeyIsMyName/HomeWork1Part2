//
//  ViewController.swift
//  HomeWork1Part2
//
//  Created by ALEKSEY SUSLOV on 28.01.2021.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    // MARK: - Private Properties
    private let lightOn: CGFloat = 1.0
    private let lightOff: CGFloat = 0.3
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redLightView.alpha = lightOff
        yellowLightView.alpha = lightOff
        greenLightView.alpha = lightOff
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.height / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
    }
    
    // MARK: - IB Actions
    @IBAction func startButtonPressed() {
        
        //comparing alpha of LightViews with lightOn and changing lights:
        switch lightOn {
        case redLightView.alpha:
            redLightView.alpha = lightOff
            yellowLightView.alpha = lightOn
        case yellowLightView.alpha:
            yellowLightView.alpha = lightOff
            greenLightView.alpha = lightOn
        case greenLightView.alpha:
            greenLightView.alpha = lightOff
            redLightView.alpha = lightOn
        default:
            redLightView.alpha = lightOn
        }
        
        if startButton.currentTitle == "Start" {
            startButton.setTitle("Next", for: .normal)
        }
    }
}
