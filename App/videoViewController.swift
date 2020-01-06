import UIKit
import AVFoundation
import AVKit

class VideoViewController: UIViewController {

var annotation: Treasure!


@IBAction func playVideo(_ sender: UIButton) {
//    guard let url = URL(string: annotation.videoURL! ) else { return }
      guard let url = URL(string: "gs://factual-project.appspot.com/Untitled Sequence.02.mov" ) else { return }
    // Create an AVPlayer, passing it the HTTP Live Streaming URL.
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
