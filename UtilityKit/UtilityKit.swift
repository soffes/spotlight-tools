import Foundation
import CoreServices

public enum Event {
	case restart
	case shutDown
	case logOut
	case sleep
	case emptyTrash

	private var eventID: AEEventID {
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

	public func perform() {
		SendAppleEventToSystemProcess(eventID)
	}
}
