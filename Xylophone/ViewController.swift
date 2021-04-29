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
    
    var Player: AVAudioPlayer?

    func playSound(sound: String) {
        let url = Bundle.main.url(forResource: sound, withExtension:"wav")
        do {
            Player = try AVAudioPlayer(contentsOf: url!)
            Player?.play()
        } catch {
            print ("couldn't load file")
        }
    }
    
    @IBAction func keyPressed(sender: UIButton) {
        
        playSound(sound: (sender.currentTitle!))
        sender.alpha = 0.5
        /*let secondsToDelay = 0.2
        DispatchQueue.main.asyncAfter(deadline: .now() + secondsToDelay) {
           print("This message is delayed")
           // Put any code you want to be delayed here
        }*/
    }
    
}

