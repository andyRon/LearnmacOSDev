//
//  AppDelegate.swift
//  TodoList
//
//  Created by Andy Ron on 2019/9/21.
//  Copyright © 2019 Andy Ron. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  var mainWindowController: MainWindowController?

  func applicationDidFinishLaunching(_ aNotification: Notification) {
    let mainWindowController = MainWindowController()
    mainWindowController.showWindow(self)
    self.mainWindowController = mainWindowController
    
  }

  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }


}

