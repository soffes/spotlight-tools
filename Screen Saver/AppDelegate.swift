import AppKit

@NSApplicationMain
final class AppDelegate: NSObject, NSApplicationDelegate {
	func applicationDidFinishLaunching(_ aNotification: Notification) {
		let task = Process()
		task.arguments = ["-a", "ScreenSaverEngine"]
		task.launchPath = "/usr/bin/open"
		task.launch()

		NSApplication.shared.terminate(nil)
	}
}
