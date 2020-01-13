import CoreLocation
import UIKit
import MapKit
import AVFoundation
import AVKit

protocol DestinationViewControllerDelegate {

}
class DestinationViewController: UIViewController {
    @IBOutlet var logo: UIImageView!

    @IBOutlet var pubInfo: UILabel!
    
    @IBOutlet var openingTimes: UILabel!
    
    
    var AudioPlayer: AVAudioPlayer!
    var treasure: Treasure!
    var delegate: DestinationViewControllerDelegate?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    pubInfo.text = treasure.details
    openingTimes.text = treasure.timeDetails
    logo.image = UIImage(named: treasure.title!)
    backgroundColor()
    
  
}
    
    @IBOutlet var playVideoButton: UIButton!
    @IBOutlet var stopPubAudio: UIButton!
    
    @IBOutlet var pubAudioButton: UIButton!
    
    
    @IBAction func pubAudioButton(_ sender: UIButton) {
        playMusic()
        
        

        

        
        
        
    }
    
    func playMusic () {
        if treasure.title == "The Rising Sun"{
        let sound = Bundle.main.path(forResource: "pubAudio", ofType: "wav")
        let url = URL(fileURLWithPath: sound!)
        
        
        do {
            AudioPlayer = try AVAudioPlayer(contentsOf: url)
            AudioPlayer.play()
        } catch let er{
            print(er.localizedDescription)
        }
        }
            if treasure.title == "Sharkeys"{
                let sound = Bundle.main.path(forResource: "poolBarAmbience", ofType: "wav")
                let url = URL(fileURLWithPath: sound!)
                
                
                do {
                    AudioPlayer = try AVAudioPlayer(contentsOf: url)
                    AudioPlayer.play()
                } catch let er{
                    print(er.localizedDescription)
                
                
                
            }
        }
        if treasure.title == "The Silverback Microbrewery"{
            let sound = Bundle.main.path(forResource: "smallPubAmbience", ofType: "wav")
            let url = URL(fileURLWithPath: sound!)
            
            
            do {
                AudioPlayer = try AVAudioPlayer(contentsOf: url)
                AudioPlayer.play()
            } catch let er{
                print(er.localizedDescription)
            
            
        }
            
            
        }
    }
    
    @IBAction func stopAudioButton(_ sender: UIButton) {
        
        AudioPlayer.stop()
        
    }
    
    
    
    func backgroundColor () {
    
        if treasure.title == "The Rising Sun" {

          view.backgroundColor = #colorLiteral(red: 0.7083625197, green: 0.8822664618, blue: 0.9832202792, alpha: 1)
            
            
            pubAudioButton.setTitleColor(.darkGray, for: .normal)
            
            stopPubAudio.setTitleColor (.darkGray, for: .normal)
            playVideoButton.setTitleColor(.darkGray, for: .normal)

    }
    
        if treasure.title == "Sharkeys"{
        
        view.backgroundColor = #colorLiteral(red: 0.4748042822, green: 0.6504566669, blue: 0.998667419, alpha: 1)
        
}
        if treasure.title == "The Silverback Microbrewery"{
            
            view.backgroundColor = #colorLiteral(red: 0.1819068491, green: 0.4830267429, blue: 0.2157703042, alpha: 1)
        }
}
    
    


    @IBAction func playVideo(_ sender: UIButton) {
        guard let url = URL(string: treasure.videoURL! ) else { return }
        let player = AVPlayer(url: url)

        // Create a new AVPlayerViewController and pass it a reference to the player.
        let controller = AVPlayerViewController()
        controller.player = player

        // Modally present the player and call the player's play() method when complete.
        present(controller, animated: true) {
            player.play()
        }
    }


    
    
    
    
    
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playback, mode: .moviePlayback)
        }
        catch {
            print("Setting category to AVAudioSessionCategoryPlayback failed.")
        }
        return true
    }

    

    }

    
    
    
    
    
    

