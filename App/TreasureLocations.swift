import Foundation
import CoreLocation
import MapKit
class TreasureLocations {
    
    var treasures = [Treasure]()
    
    init() {
        
        let universityCoordinate = CLLocationCoordinate2D(latitude: 50.784476, longitude: -1.657035)
        let universityTreasure = Treasure(coordinate: universityCoordinate, title: "The Rising Sun")
        treasures.append(universityTreasure)
        universityTreasure.videoURL = "gs://factual-project.appspot.com/Untitled Sequence.02.mov"
        universityTreasure.details = "The Rising Sun"
        
        
        let oceanariumCoordinate = CLLocationCoordinate2D(latitude: 50.824028, longitude: -1.684701)
        let oceanariumTreasure = Treasure(coordinate: oceanariumCoordinate, title: "The Silverback Microbrewery")
        treasures.append(oceanariumTreasure)
        oceanariumTreasure.videoURL = ""
        oceanariumTreasure.details = "The Silverback Microbrewery"
        
        let haloCoordinate = CLLocationCoordinate2D(latitude: 50.801416, longitude: -1.572226)
        let haloTreasure = Treasure(coordinate: haloCoordinate, title: "Sharkeys")
        treasures.append(haloTreasure)
        haloTreasure.videoURL = ""
        haloTreasure.details = "Sharkeys"
        
    }
    
}
