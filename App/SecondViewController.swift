import CoreLocation
import UIKit
import MapKit
import AVFoundation

class SecondViewController: UIViewController {

let locationManager = CLLocationManager()
let treasureManager = TreasureLocations()


@IBOutlet weak var mapView: MKMapView!

override func viewDidLoad() {
super.viewDidLoad()

mapView.delegate = self

//mapView.userTrackingMode = .follow

locationManager.requestAlwaysAuthorization()
locationManager.delegate = self
locationManager.startUpdatingLocation()


for treasure in treasureManager.treasures {
locationManager.startMonitoring(for: treasure.region)
mapView.addAnnotation(treasure)
}

mapView.showAnnotations(mapView.annotations, animated: true)

}


  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //this happens every time a segue happens...

    
    if let treasure = sender as? Treasure {
        let vc = segue.destination as! DestinationViewController

        vc.delegate = self as! DestinationViewControllerDelegate
        vc.treasure = sender as! Treasure
        
    // get the destination VC and pass the data over
    //segue.destination as? DestinationViewController
    // In the DestinationViewController setup a variable which is of type Treasure
    //vc.treasure = treasure
    //this is so that when you click on a specific info, it takes to the right page
    
    }

  }


}

extension SecondViewController: CLLocationManagerDelegate {

// func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
// print(locations.last!)
// }


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

_ = "marker"
var _: MKMarkerAnnotationView

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



return view
}

func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {

// get the treasure off the view...
if let treasure = view.annotation as? Treasure {
performSegue(withIdentifier: "showDetail", sender: treasure)
    
}

}


}

