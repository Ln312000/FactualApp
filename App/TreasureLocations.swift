import Foundation
import CoreLocation
import MapKit
class TreasureLocations {
    
    var treasures = [Treasure]()
    
    init() {
        
        let universityCoordinate = CLLocationCoordinate2D(latitude: 50.784476, longitude: -1.657035)
        let universityTreasure = Treasure(coordinate: universityCoordinate, title: "The Rising Sun")
        treasures.append(universityTreasure)
        universityTreasure.videoURL = "https://firebasestorage.googleapis.com/v0/b/factual-project.appspot.com/o/Untitled%20Sequence.02.mov?alt=media&token=34c6177b-2bce-4e6e-93a1-d049941b4863"
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
