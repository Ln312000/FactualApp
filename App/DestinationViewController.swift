import CoreLocation
import UIKit
import MapKit

protocol DestinationViewControllerDelegate {

}
class DestinationViewController: UIViewController {
    @IBOutlet var logo: UIImageView!

    @IBOutlet var pubInfo: UILabel!
    
    
  var treasure: Treasure!
    var delegate: DestinationViewControllerDelegate?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    pubInfo.text = treasure.details
    logo.image = UIImage

  
    
  }
  
  
}

//extension DestinationViewController: DestinationViewControllerDelegate{
    
    
//}
