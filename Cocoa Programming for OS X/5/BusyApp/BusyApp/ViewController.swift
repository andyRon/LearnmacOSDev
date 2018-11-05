//
//  ViewController.swift
//  BusyApp
//
//  Created by Andy Ron on 2018/10/5.
//  Copyright © 2018 Andy Ron. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var slider: NSSlider!
    @IBOutlet weak var upDownTextField: NSTextField!
    @IBOutlet weak var showButton: NSButton!
    @IBOutlet weak var hideButton: NSButton!
    @IBOutlet weak var checkMe: NSButton!
    @IBOutlet weak var secureTextField: NSSecureTextField!
    @IBOutlet weak var revealButton: NSButton!
    @IBOutlet weak var textField: NSTextField!
    
    var sliderValue: Double = 0
    var olderSliderValue: Double = 0
    
    @IBAction func slider(_ sender: NSSlider) {
        sliderValue = sender.doubleValue
        if sliderValue > olderSliderValue {
            upDownTextField.stringValue = "slider值变大"
        } else if sliderValue == olderSliderValue {
            upDownTextField.stringValue = "slider值没有变化"
        } else {
            upDownTextField.stringValue = "slider值变小"
        }
        olderSliderValue = sender.doubleValue
    }
    
    @IBAction func show(_ sender: NSButton) {
        showButton.state = .on
        hideButton.state = .off
        slider.numberOfTickMarks = 10
    }
    
    @IBAction func hide(_ sender: Any) {
        showButton.state = .off
        hideButton.state = .on
        slider.numberOfTickMarks = 0
    }
    
    @IBAction func reset(_ sender: Any) {
        slider.doubleValue = 0
        upDownTextField.stringValue = ""
        showButton.state = .on
        slider.numberOfTickMarks = 10
        hideButton.state = .off
        checkMe.state = .on
        secureTextField.stringValue = ""
        textField.stringValue = ""
    }
    
    @IBAction func reveal(_ sender: NSButton) {
        textField.stringValue = secureTextField.stringValue
    }
    
    @IBAction func check(_ sender: NSButton) {
        
        if sender.state == .on {
            checkMe.state = .on
        
        } else {
            checkMe.state = .off
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

