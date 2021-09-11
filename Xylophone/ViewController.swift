//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }

    @IBAction func keyPressed(_ sender: UIButton) {
 
        playSound(senderLetter: sender.currentTitle!)
        
        // Reduces the sender's opacity (the button that got pressed) to half
        sender.alpha = 0.5

        // Do stuff 0.12 seconds later
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.12) {

            // Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1
                
            }
        
    }
    
    func playSound(senderLetter: String) {
        let url = Bundle.main.url(
            forResource: senderLetter, withExtension: "wav"
        )
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
}



