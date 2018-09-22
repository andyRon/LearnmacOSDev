//
//  MainWindowController.swift
//  RandomPassword
//
//  Created by Andy Ron on 2018/9/22.
//  Copyright © 2018年 Andy Ron. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    @IBOutlet weak var textField: NSTextField!
    
    override var windowNibName: NSNib.Name? {
        return "MainWindowController"
    }
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func generatePassword(_ sender: NSButton) {
        
        textField.stringValue = generateRandomString(12)
    }
}
