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
    
    var bombSoundEffect: AVAudioPlayer?
    let soundArray = ["C.wav","D.wav","E.wav","F.wav","G.wav","A.wav","B.wav"]

    func playSound(sound: String) {
        let path = Bundle.main.path(forResource: sound, ofType:nil)!
        let url = URL(fileURLWithPath: path)
        do {
            bombSoundEffect = try AVAudioPlayer(contentsOf: url)
            bombSoundEffect?.play()
        } catch {
            print ("couldn't load file")
        }
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        switch sender.currentTitle! {
        
        case "C":
            playSound(sound: "C.wav")
        case "D":
            playSound(sound: "D.wav")
        case "E":
            playSound(sound: "E.wav")
        case "F":
            playSound(sound: "F.wav")
        case "G":
            playSound(sound: "G.wav")
        case "A":
            playSound(sound: "A.wav")
        case "B":
            playSound(sound: "B.wav")
        default:
            print("Some other character")
        }
    }
    
}

