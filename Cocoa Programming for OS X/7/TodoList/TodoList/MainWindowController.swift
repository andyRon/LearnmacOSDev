//
//  MainWindowController.swift
//  TodoList
//
//  Created by Andy Ron on 2019/9/21.
//  Copyright © 2019 Andy Ron. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
  
  @IBOutlet weak var textField: NSTextField!
  @IBOutlet weak var tableView: NSTableView!
  
  var dataSource = [String]()
  
  override func windowDidLoad() {
      super.windowDidLoad()

      // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
  }
  // 在xib中药关联，也要在此处关联
  override var windowNibName: NSNib.Name? {
    return "MainWindowController"
  }
  
  //MARK: - Actions
  @IBAction func Add(_ sender: Any) {
    let string = textField.stringValue
    if string.isEmpty {
      print("string from \(string) is empty")
    } else {
      dataSource.append(string)
      tableView.reloadData()
    }
  }
  
}

extension MainWindowController: NSTableViewDelegate {
  
}

extension MainWindowController: NSTableViewDataSource {
  func numberOfRows(in tableView: NSTableView) -> Int {
    return dataSource.count
  }
  
  func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
    print(dataSource[row])
    return dataSource[row]
  }
}
