import AppKit
import UtilityKit

@NSApplicationMain
final class AppDelegate: NSObject, NSApplicationDelegate {
	func applicationDidFinishLaunching(_ aNotification: Notification) {
		Event.sleep.perform()
		NSApplication.shared.terminate(nil)
	}
}
