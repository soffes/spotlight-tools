//
//  AppDelegate.swift
//  Lock
//
//  Created by Sam Soffes on 11/15/14.
//  Copyright (c) 2014 Nothing Magical Inc. All rights reserved.
//

import AppKit

@NSApplicationMain final class AppDelegate: NSObject, NSApplicationDelegate {
	func applicationDidFinishLaunching(_ aNotification: Notification) {
		let task = Process()
		task.arguments = ["-suspend"]
		task.launchPath = "/System/Library/CoreServices/Menu Extras/User.menu/Contents/Resources/CGSession"
		task.launch()

		NSApplication.shared.terminate(nil)
	}
}
