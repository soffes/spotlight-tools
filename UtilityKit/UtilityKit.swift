//
//  UtilityKit.swift
//  Utilities
//
//  Created by Sam Soffes on 11/15/14.
//  Copyright (c) 2014 Nothing Magical Inc. All rights reserved.
//

import Foundation
import CoreServices

public struct UtilityKit {
	public enum Event {
		case Restart
		case ShutDown
		case LogOut
		case Sleep
		case EmptyTrash

		var eventID: AEEventID {
			switch self {
			case .Restart:
				return AEEventID(kAERestart)
			case .ShutDown:
				return AEEventID(kAEShutDown)
			case .LogOut:
				return AEEventID(kAEReallyLogOut)
			case .Sleep:
				return AEEventID(kAESleep)
			case .EmptyTrash:
				return AEEventID(kAEEmpty)
			}
		}
	}

	public static func performEvent(event: Event) {
		SendAppleEventToSystemProcess(event.eventID)
	}
}