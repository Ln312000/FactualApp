import UIKit
import AVKit


class ThirdViewController {
        var audioPlayer = AVAudioPlayer()
        func viewDidLoad() {
     
            let sound = Bundle.main.path(forResource: "pubAudio", ofType: "wav")
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            }
            catch{
                print(error)
            }
        }
    @IBAction func soundButton(_ sender: UIButton) {
        audioPlayer.play()
    }
}
