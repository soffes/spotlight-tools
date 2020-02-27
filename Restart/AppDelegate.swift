import AppKit
import UtilityKit

@NSApplicationMain
final class AppDelegate: NSObject, NSApplicationDelegate {
	func applicationDidFinishLaunching(_ aNotification: Notification) {
		Event.restart.perform()
		NSApplication.shared.terminate(nil)
	}
}
