//
//  MainWindowController.swift
//  SpeakLine
//
//  Created by Andy Ron on 2018/10/5.
//  Copyright © 2018 Andy Ron. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var stopButton: NSButton!
    @IBOutlet weak var speakButton: NSButton!
    
    let speechSynth = NSSpeechSynthesizer()
    
    var isStarted = false {
        didSet {
            updateButtons()
        }
    }
    
    override var windowNibName: NSNib.Name? {
        return "MainWindowController"
    }
    
    @IBAction func stopIt(_ sender: NSButton) {
        speechSynth.stopSpeaking()
//        isStarted = false
    }
    
    @IBAction func speakIt(_ sender: NSButton) {
        let string = textField.stringValue
        if string.isEmpty {
            print("string from \(string) is empty")
        } else {
            speechSynth.startSpeaking(string)
            isStarted = true
        }
    }
    
    func updateButtons() {
        if isStarted {
            speakButton.isEnabled = false
            stopButton.isEnabled = true
        } else {
            speakButton.isEnabled = true
            stopButton.isEnabled = false
        }
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        updateButtons()
        
        speechSynth.delegate = self
    }
    
}

extension MainWindowController: NSSpeechSynthesizerDelegate {
    
    func speechSynthesizer(_ sender: NSSpeechSynthesizer, didFinishSpeaking finishedSpeaking: Bool) {
        isStarted = false
        print("读完了")
    }
}


extension MainWindowController: NSWindowDelegate {
    
    // 正在读是不能关闭窗口。
    func windowShouldClose(_ sender: NSWindow) -> Bool {
        return !isStarted
    }
}
