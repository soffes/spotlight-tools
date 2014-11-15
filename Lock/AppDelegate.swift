//
//  AppDelegate.swift
//  Lock
//
//  Created by Sam Soffes on 11/15/14.
//  Copyright (c) 2014 Nothing Magical Inc. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
	func applicationDidFinishLaunching(aNotification: NSNotification) {
		let task = NSTask()
		task.arguments = ["-suspend"]
		task.launchPath = "/System/Library/CoreServices/Menu Extras/User.menu/Contents/Resources/CGSession"
		task.launch()

		NSApplication.sharedApplication().terminate(nil)
	}
}
