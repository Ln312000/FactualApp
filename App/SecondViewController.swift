import CoreLocation
import UIKit
import MapKit


class SecondViewController: UIViewController {
    
    let locationManager = CLLocationManager()
    let treasureManager = TreasureLocations()
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        mapView.delegate = self
        
        mapView.userTrackingMode = .follow
        
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
                
        
        for treasure in treasureManager.treasures {
            locationManager.startMonitoring(for: treasure.region)
            mapView.addAnnotation(treasure)
        }

    }


}

extension SecondViewController: CLLocationManagerDelegate {

//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        print(locations.last!)
//    }
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        for annotation in mapView.annotations {
            if annotation.title == region.identifier {
                guard let annotationView = mapView.view(for: annotation) as? MKMarkerAnnotationView else { return }
                annotationView.markerTintColor = .green


            }
        }
}
    
    func updateLabel() {

    }
    func locationManager(_ manager: CLLocationManager, didExitRegion region: CLRegion) {

    }

}


extension SecondViewController: MKMapViewDelegate {
    
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {

        
        guard let annotation = annotation as? Treasure else { return nil }
        
        let identifier = "marker"
        var view: MKMarkerAnnotationView
        
        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            as? MKMarkerAnnotationView {
            dequeuedView.annotation = annotation
            view = dequeuedView
        } else {
            view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            view.canShowCallout = true
            view.calloutOffset = CGPoint(x: -5, y: 5)
            view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }
        guard annotation is Treasure else { return nil }
        // 3
        _ = "marker"
        var _: MKMarkerAnnotationView
        // 4
        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
          as? MKMarkerAnnotationView {
          dequeuedView.annotation = annotation
          view = dequeuedView
        } else {
          // 5
          view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
          view.canShowCallout = true
          view.calloutOffset = CGPoint(x: -5, y: 5)
          view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }
        
        func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView,
            calloutAccessoryControlTapped control: UIButton) {

           performSegue(withIdentifier: "showDetail", sender: nil)
        }
        
        return view
        }

}

