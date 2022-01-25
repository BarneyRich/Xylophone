//
//  ViewController.swift
//  Xylophone
//
//  Created by Barnabas Bala on 25.01.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        print(sender.currentTitle!)
        
        playSound(soundName: sender.currentTitle!)
        
         sender.alpha = 0.5  //Reduces the sender's (the button that got pressed) opacity to half.
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            
            sender.alpha = 1.0    //Bring's sender's opacity back up to fully opaque.
        }
    }
    
      func playSound(soundName: String){
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

 
