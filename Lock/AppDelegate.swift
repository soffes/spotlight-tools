import AppKit

@NSApplicationMain
final class AppDelegate: NSObject, NSApplicationDelegate {
	func applicationDidFinishLaunching(_ aNotification: Notification) {
		let task = Process()
		task.arguments = ["-suspend"]
		task.launchPath = "/System/Library/CoreServices/Menu Extras/User.menu/Contents/Resources/CGSession"
		task.launch()

		NSApplication.shared.terminate(nil)
	}
}
