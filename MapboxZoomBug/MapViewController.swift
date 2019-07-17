import UIKit
import Mapbox

final class MapViewController: UIViewController {
	private lazy var mapView: MGLMapView = {
		let url = URL(string: "mapbox://styles/mapbox/streets-v11")!
		let view = MGLMapView(frame: .zero, styleURL: url)
		view.allowsTilting = false
		view.allowsRotating = false
		view.setCenter(CLLocationCoordinate2D(latitude: 59.31, longitude: 18.06), zoomLevel: 9, animated: false)
		return view
	}()

	override func viewDidLoad() {
		super.viewDidLoad()
		mapView.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(mapView)

		NSLayoutConstraint.activate([
			mapView.topAnchor.constraint(equalTo: view.topAnchor),
			mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
		])
	}
}
