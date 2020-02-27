import AppKit
import UtilityKit

@NSApplicationMain
final class AppDelegate: NSObject, NSApplicationDelegate {
	func applicationDidFinishLaunching(_ aNotification: Notification) {
		Event.logOut.perform()
		NSApplication.shared.terminate(nil)
	}
}
