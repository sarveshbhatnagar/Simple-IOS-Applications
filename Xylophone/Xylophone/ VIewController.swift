//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    let container = ["note1","note2","note3","note4","note5","note6","note7"]
    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


    @IBAction func notePressed(_ sender: UIButton) {
        i = sender.tag
        i -= 1
        playSound(noteNumber: i)
        
    }
    func playSound(noteNumber: Int){
        
        let soundUrl = Bundle.main.url(forResource: container[noteNumber], withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        }catch{
            
        }
        audioPlayer.play()
        
    }
    
  

}

