//
//  ViewController.swift
//  Bugfender sample
//
//  Created by gimix on 07/05/15.
//  Copyright (c) 2015 Bugfender. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        BFLog("View did load")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        BFLog("View will appear")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        BFLog("View did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        BFLog("View will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        BFLog("View did disappear")
    }

    @IBAction func doFlower(sender: AnyObject) {
        BFLog("Flower Power!")
    }
    
    @IBAction func doTree(sender: AnyObject) {
        BFLog("I like Trees :D")
    }

    @IBAction func doFood(sender: AnyObject) {
        BFLog("Lets go to eat sushi!")
    }

    @IBAction func doRock(sender: AnyObject) {
        BFLog("Rock and roll is my best friend!")
    }

    @IBAction func sliderChanged(slider: UISlider) {
        BFLog("Slider Value: \(slider.value)");
    }
    
    @IBAction func buttonSwitched(sender: UISwitch) {
        BFLog("Switch value: " + (sender.on ? "ON" : "OFF"))
    }
}

