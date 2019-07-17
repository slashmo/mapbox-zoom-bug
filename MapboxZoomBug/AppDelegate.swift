import UIKit
import Mapbox

@UIApplicationMain
final class AppDelegate: UIResponder {
	lazy var window: UIWindow? = {
		let window = UIWindow(frame: UIScreen.main.bounds)
		window.rootViewController = MapViewController()
		return window
	}()
}

extension AppDelegate: UIApplicationDelegate {
	func application(
		_ application: UIApplication,
		didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
	) -> Bool {
		window?.makeKeyAndVisible()
		return true
	}
}
