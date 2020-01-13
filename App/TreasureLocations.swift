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
        universityTreasure.details = "The Rising Sun Freehouse in the south of the New Forest is a historic and welcoming pub. Originally built over 900 years ago and used by french smugglers to import wines and other alcohol. Although partially collapsing, it was rebuilt in the Victorian era and still features the original stained glass windows and doors. The pub features a warm cosy atmosphere including a large pub garden and newly built children’s play area. In the past this part of the New Forest was very isolated and the sight of the Inn that has always stood here must have been a very welcome sight to those crossing the wild and lonely forest moors. Over the centuries travellers, merchants, foresters, Lords and their Ladies hunting in the Royal preserve would stay and explore the area."
        universityTreasure.timeDetails = "Opening Times: 10am - 11pm all week"

        
        let oceanariumCoordinate = CLLocationCoordinate2D(latitude: 50.744479, longitude: -1.878588)
        let oceanariumTreasure = Treasure(coordinate: oceanariumCoordinate, title: "The Silverback Microbrewery")
        treasures.append(oceanariumTreasure)
        oceanariumTreasure.videoURL = "https://firebasestorage.googleapis.com/v0/b/factual-project.appspot.com/o/Milton%20Fenton%20Interview.mp4?alt=media&token=ffa0393b-17eb-4450-97cd-88aa99cbc968"
        oceanariumTreasure.details = "Opened in 2016, The Silverback Alehouse, a micro-pub on Winton’s highstreet offers a welcome atmosphere and a collection of beers, ciders and other alcohols and soft drinks. Four carefully chosen real ales from regional breweries are served from gravity alongside ales from the Nottinghamshire area. Four ciders are available, sourced from small independent cider makers. Benches and tables surround the perimeter of the pub to which beer is brought to you by the friendly staff. Light snacks are available and you are welcome to bring in your take-away. The Silverback has a relaxed and friendly atmosphere making it popular with locals and visitors alike."
        oceanariumTreasure.timeDetails = "Opening Times: 12pm - 10pm Sundays and Mondays, 4pm - 11pm Tuesday 'til Saturday"
        
        let haloCoordinate = CLLocationCoordinate2D(latitude: 50.722321, longitude: -1.868195)
        let haloTreasure = Treasure(coordinate: haloCoordinate, title: "Sharkeys")
        treasures.append(haloTreasure)
        haloTreasure.videoURL = "https://firebasestorage.googleapis.com/v0/b/factual-project.appspot.com/o/Jeff%20White%20Interview.mp4?alt=media&token=42277366-e9b9-4c28-a591-6b4ae4e93dd7"
        haloTreasure.details = "Sharkeys Sports Bar has become a recent institution in Bournemouth’s student nightlife. Situated in Lansdowne near The Old Firestation and multiple student accommodations, it has regular visitors and sports fans from around the Bournemouth area and beyond. Sharkeys was founded in 2000 but unfortunately met with disaster in early 2013 after it was burned down in a fire along the Old Christchurch Road. The owner Mr Cake found the positive in the situation and rebuilt the bar many months later with a complete redesign and updated features including 4k projectors and new pool tables. With plans for a flagship bar in Southampton approved in 2018, adding over 25 new jobs to the area, Sharkeys is looking to become the next big name in sports bars in the UK."
        haloTreasure.timeDetails = "Opening Times: 12pm - 1am Sunday 'til Thursday, 12pm - 3am Fridays and Saturdays"
        
    }
    
}
