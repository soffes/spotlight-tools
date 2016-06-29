//
//  AppDelegate.swift
//  Sleep
//
//  Created by Sam Soffes on 11/15/14.
//  Copyright (c) 2014 Nothing Magical Inc. All rights reserved.
//

import AppKit
import UtilityKit

@NSApplicationMain final class AppDelegate: NSObject, NSApplicationDelegate {
	func applicationDidFinishLaunching(aNotification: NSNotification) {
		UtilityKit.performEvent(.Sleep)
		NSApplication.sharedApplication().terminate(nil)
	}
}
