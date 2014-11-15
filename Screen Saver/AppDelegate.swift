//
//  AppDelegate.swift
//  Screen Saver
//
//  Created by Sam Soffes on 11/15/14.
//  Copyright (c) 2014 Nothing Magical Inc. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
	func applicationDidFinishLaunching(aNotification: NSNotification) {
		NSWorkspace.sharedWorkspace().openURL(NSURL(fileURLWithPath: "/System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app")!)
		NSApplication.sharedApplication().terminate(nil)
	}
}
