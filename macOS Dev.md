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


## 5 Controls

**Taligent** was created by IBM and Apple to develop a set of tools and libraries like Cocoa.

Project: **RGBWell**  
![](https://ws2.sinaimg.cn/large/006tNbRwgy1fvi9qzm1soj30ww0mg3yt.jpg)


*Visible At Launch*  取消

The property must be an optional because it is not initialized until `applicationDidFinishLaunching(_:)` is called.

关联 `MainWindowController` 和 MainWindowController.xib   
```swift
    override var windowNibName: NSNib.Name? {
        return "MainWindowController"
    }
```

File's Owner is a placeholder that stands in for the object that will load the NIB file at runtime.


![](https://ws3.sinaimg.cn/large/006tNbRwgy1fvi8bs3de1j30vi0l877s.jpg)

- Controls

`NSSlider`, `NSColorWell`

![](https://ws4.sinaimg.cn/large/006tNbRwgy1fvi8es2i9ej30w40won0h.jpg)


`NSCell`


*continuous*



- NSColorWell and NSColor


- Using the Documentation

There are over 300 classes in Cocoa and related frameworks, and every one is documented in Apple’s API reference.




Project: **BusyApp**



## 6 Delegation

**SpeakLine**

### 创建**SpeakLine**

- 不是Storyboard创建项目
- Delete the window
- Create the window controller class with a XIB file

![](https://upload-images.jianshu.io/upload_images/1678135-616bfacdac03fc40.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 关联XIB文件

```
override var windowNibName: NSNib.Name? {
        return "MainWindowController"
    }
```

- 在`AppDelegate.swift`中初始化`MainWindowController`

```
    var mainWindowController: MainWindowController?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        let mainWindowController = MainWindowController()
        mainWindowController.showWindow(self)
        self.mainWindowController = mainWindowController
    }
```

Single-Window Application 
Initializes a mina window controller

- 把上面的代码段保存成一个 *code snippet*， 方便以后调用。  
选中代码块，右击选中**Create Code Snippet**，然后命名。  

![](https://upload-images.jianshu.io/upload_images/1678135-2228926d9ff8ef50.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 创建UI


### Synthesizing Speech 合成声音

`NSSpeechSynthesizer`


### 更新按钮的状态


### 通过代理模式检测 音频是否读完


### Cocoa 中使用代理的类
```swift
NSAlert			NSMatrix			NSTabView
NSAnimation		NSMenu				NSTableView
NSApplication	NSPathControl		NSText
NSBrowser		NSRuleEditor		NSTextField
NSDatePicker	NSSavePanel			NSTextStorage
NSDrawer		NSSound				NSTextView
NSFontManager	NSSpeechRecognizer	NSTokenField
NSImage			NSSpeechSynthesizer	NSToolbar
NSLayoutManager	NSSplitView			NSWindow
```

### NSApplication 和  



### The main event loop

When a Cocoa application is launched, the `NSApplication` starts and maintains an event loop on the main thread. The main event loop’s job is to wait around for an event to happen, like a key being pressed or a mouse being clicked.


??挑战有疑问

## 7 Table Views


### about Table Views

*delegate*   the user interacts with a table view

*data source*   a table view knows how to display data


The data source waits on the table view to ask for data


### Getting Voice Data

打印`NSSpeechSynthesizer.availableVoices`，可得到可用声音数据

```
[__C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.Alex), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.alice), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.alva), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.amelie), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.anna), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.carmit), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.damayanti), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.daniel), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.diego), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.ellen), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.fiona), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.Fred), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.ioana), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.joana), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.jorge), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.juan), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.kanya), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.karen), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.kyoko), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.laura), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.lekha), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.luca), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.luciana), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.maged), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.mariska), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.mei-jia), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.melina), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.milena), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.moira), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.monica), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.nora), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.paulina), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.samantha), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.sara), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.satu), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.sin-ji), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.tessa), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.thomas), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.ting-ting.premium), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.veena), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.Victoria), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.xander), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.yelda), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.yuna), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.yuri), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.zosia), __C.NSSpeechSynthesizerVoiceName(_rawValue: com.apple.speech.synthesis.voice.zuzana)]
```

`NSSpeechSynthesizer.VoiceAttributeKey`  macOS 系统中的声音资源位置在 `/System/Library/Speech/Voices`


### Adding a Table View


![Table View中包括若干对象](https://ws3.sinaimg.cn/large/006tNbRwgy1fwwvzwvcxvj30ex09q74r.jpg)

Table View中包括若干对象

**Bordered Scroll View** 是 `NSScrollView` 的实例。

a clip view, two scrollers, and a table header view。**Clip View**是`NSClipView`的实例，其中包含一个`NSTableView`的实例；`NSScroller`； `NSTableViewHeaderView`; `NSTableColumn`

删除默认的两个**Table Column**中的一个，并修改另一个名字为**Voices**。此时虽然已经是一列了，但头部显示的还是原来的两列，此时只有重新调整一下**Scroll View**的大小，就会好了，这只是一个显示问题


#### 让window不能调整大小


### Tables, Cells, and Views

In a **cell-based table**, a cell is always an instance of `NSCell` or one of its subclasses.

In a **view-based table**, a table cell is an instance of `NSView` or one of its subclasses – most commonly `NSTableCellView`.

![](https://ws3.sinaimg.cn/large/006tNbRwgy1fwwx5y25gfj30fn0a8dgi.jpg)

#### NSTableViewDataSource 

#### Binding the text field to the table cell view

![](https://ws2.sinaimg.cn/large/006tNbRwgy1fwwxkv9ulmj31kw0xutav.jpg)


#### NSTableViewDelegate


p295 “Pre-selecting the default voice”



