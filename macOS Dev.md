macOS Dev
------------


# osx-dev-daily

https://www.youtube.com/watch?v=tMZuKqDGtxA&list=PLU03ExiIcAUsqTHAiZTY-zV8B5bfRHqg9

### Storyboard

Toolbar


Container View   自带一个View Controller

Custom View

Round Rect Button

关联 Window Controller 和 View Controller， window content

删除View Controller， 添加Vertical Split View Controller，关联embed



### Auto Layout

左右的VC中的label，都添加约束水平和垂直对齐

但右边的Label，不随着窗口的变化而调整位置，这是需要对Container View添加约束



### Collection View
NSCollectionView

约束 


Collection View Item


# Cocoa Programming for OS X: The Big Nerd Ranch Guide



## Introduction

a stylish Cocoa developer

problemic

Cocoa: `Foundation`, `AppKit`, `Core Data`

This book will focus on the Cocoa frameworks and especially Foundation and AppKit because they will form the basis of most Cocoa applications that you will write. Once you have mastered these, other frameworks will be easier to understand.



## 1 Let's Get Started

Project: **RandomPassword**  


NSWindow, NSView, NSButton, and NSTextField

The model layer is an abstraction of the real-world problem that the application is built to solve. 

![](https://ws3.sinaimg.cn/large/006tNbRwgy1fvhnaautrsj30tg0q6js8.jpg)

`Text Field`  
`Push Button`


When you save MainWindowController.xib, the objects you dragged and configured in Interface Builder are encoded as XML and **archived** into the XIB file.

When the application runs and the user interface is needed, the NIB file is loaded and the view objects are **unarchived**.

In the Controls section, uncheck the box labeled Resize.  窗口不能随意调整大小


![](https://ws3.sinaimg.cn/large/006tNbRwgy1fvi5bmoe0vj30vg0na74u.jpg)


删除 `Main.storyboard`中原来的window窗口

关联

![](https://ws3.sinaimg.cn/large/006tNbRwgy1fvi5sowc0sj30us0iymxx.jpg)


creating Model


The AppDelegate is not intended to control a user interface or to coordinate an app’s model and view layers.

