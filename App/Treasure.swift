import Foundation
import CoreLocation
import MapKit

class Treasure: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var title: String?
    let region: CLCircularRegion
    
    init(coordinate: CLLocationCoordinate2D, title: String) {
        self.coordinate = coordinate
        self.title = title
        region = CLCircularRegion(center: coordinate, radius: 1, identifier: title)
    }
    
    
}
