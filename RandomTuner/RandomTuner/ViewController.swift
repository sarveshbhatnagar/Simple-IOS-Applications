//
//  ViewController.swift
//  RandomTuner
//
//  Created by Sarvesh Bhatnagar on 13/01/18.
//  Copyright © 2018 Rotmex. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer : AVAudioPlayer!
    var containerNotes = ["note1","note2","note3","note4","note5","note6","note7"]
    
    var containerImages = [#imageLiteral(resourceName: "sound1"),#imageLiteral(resourceName: "sound2"),#imageLiteral(resourceName: "sound3"),#imageLiteral(resourceName: "sound4"),#imageLiteral(resourceName: "sound5"),#imageLiteral(resourceName: "sound6"),#imageLiteral(resourceName: "sound7")]
    
    var i = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var soundImageView: UIImageView!
    @IBAction func tuneMaker(_ sender: UIButton) {
        
        i = Int(arc4random_uniform(7))
        soundImageView.image = containerImages[i]
        playSound(noteNumber: i)
        print(i)
        
    }
    
    
    func playSound(noteNumber: Int){
        
        let soundUrl = Bundle.main.url(forResource: containerNotes[noteNumber], withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        }catch{
            
        }
        audioPlayer.play()
        
    }
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        playSound(noteNumber: Int(arc4random_uniform(6)))
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        playSound(noteNumber: Int(arc4random_uniform(6)))
    }


}

