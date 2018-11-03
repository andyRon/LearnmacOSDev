//
//  MainWindowController.swift
//  RGBWell
//
//  Created by Andy Ron on 2018/9/22.
//  Copyright © 2018年 Andy Ron. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet weak var colorWell: NSColorWell!
    
    var r = 0.0
    var g = 0.0
    var b = 0.0
    var a = 1.0
    
    @IBOutlet weak var rSlider: NSSlider!
    @IBOutlet weak var gSlider: NSSlider!
    @IBOutlet weak var bslider: NSSlider!
    
    
    override var windowNibName: NSNib.Name? {
        return "MainWindowController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        rSlider.doubleValue = r
        gSlider.doubleValue = g
        bslider.doubleValue = b
        updateColor()
    }
    
    @IBAction func adjustRed(_ sender: NSSlider) {
        print("R slider's value is \(sender.floatValue)")
        r = sender.doubleValue
        updateColor()
    }
    
    @IBAction func adjustGreen(_ sender: NSSlider) {
        print("G slider's value is \(sender.floatValue)")
        g = sender.doubleValue
        updateColor()
    }
    
    
    @IBAction func adjustBlue(_ sender: NSSlider) {
        print("B slider's value is \(sender.floatValue)")
        b = sender.doubleValue
        updateColor()
    }
    
    func updateColor() {
        let newColor = NSColor(calibratedRed: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(a))
        colorWell.color = newColor
    }
}

