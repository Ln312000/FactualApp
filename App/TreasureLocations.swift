import Foundation
import CoreLocation
import MapKit
class TreasureLocations {
    
    var treasures = [Treasure]()
    
    init() {
        
        let universityCoordinate = CLLocationCoordinate2D(latitude: 50.784476, longitude: -1.657035)
        let universityTreasure = Treasure(coordinate: universityCoordinate, title: "The Rising Sun")
        treasures.append(universityTreasure)
        universityTreasure.videoURL = "https://firebasestorage.googleapis.com/v0/b/factual-project.appspot.com/o/Factual%20-%20Hayden%20Interview.mp4?alt=media&token=a956bc5e-c4de-4c10-a7c8-327ca05d7a79"
        universityTreasure.details = "The Rising Sun"

        
        let oceanariumCoordinate = CLLocationCoordinate2D(latitude: 50.744479, longitude: -1.878588)
        let oceanariumTreasure = Treasure(coordinate: oceanariumCoordinate, title: "The Silverback Microbrewery")
        treasures.append(oceanariumTreasure)
        oceanariumTreasure.videoURL = "https://firebasestorage.googleapis.com/v0/b/factual-project.appspot.com/o/Milton%20Fenton%20Interview.mp4?alt=media&token=ffa0393b-17eb-4450-97cd-88aa99cbc968"
        oceanariumTreasure.details = "The Silverback Microbrewery"
        
        let haloCoordinate = CLLocationCoordinate2D(latitude: 50.722321, longitude: -1.868195)
        let haloTreasure = Treasure(coordinate: haloCoordinate, title: "Sharkeys")
        treasures.append(haloTreasure)
        haloTreasure.videoURL = "https://firebasestorage.googleapis.com/v0/b/factual-project.appspot.com/o/Jeff%20White%20Interview.mp4?alt=media&token=42277366-e9b9-4c28-a591-6b4ae4e93dd7"
        haloTreasure.details = "Sharkeys"
        
    }
    
}
