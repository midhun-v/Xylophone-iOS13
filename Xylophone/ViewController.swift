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
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(sound: sender.currentTitle!)
    }
    
}

