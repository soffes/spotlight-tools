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
		case restart
		case shutDown
		case logOut
		case sleep
		case emptyTrash

		var eventID: AEEventID {
			switch self {
			case .restart:
				return AEEventID(kAERestart)
			case .shutDown:
				return AEEventID(kAEShutDown)
			case .logOut:
				return AEEventID(kAEReallyLogOut)
			case .sleep:
				return AEEventID(kAESleep)
			case .emptyTrash:
				return AEEventID(kAEEmpty)
			}
		}
	}

	public static func performEvent(_ event: Event) {
		SendAppleEventToSystemProcess(event.eventID)
	}
}
