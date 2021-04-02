//
//  WaltzModel.swift
//  Swift5 - DSK - Waltz
//
//  Created by Daniyar Mussin on 13/03/2021.
//

import SwiftUI
import AVKit

class WaltzModel: ObservableObject{
    
    // creating audioplayer
    var audioPlayer: AVAudioPlayer?
    
    
    func loadMusic(){
        
        if let filePath = Bundle.main.path(forResource: "Waltz of the Flowers", ofType: "mp3"){
        //get access to MP3 & creating URL
        let fileURL = URL(fileURLWithPath: filePath)
        
            do{
                audioPlayer = try AVAudioPlayer.init(contentsOf: fileURL)
            } catch{
                print("Error - File not found.")
            }
           
        
        }
    }
    
    func loadAndPlay(){
        loadMusic()
        playMusic()
    }
    
    func playMusic(){
        audioPlayer?.play()
    }
    
    func pauseMusic(){
        audioPlayer?.pause()
    }
    
    func stopMusic(){
        audioPlayer?.stop()
    }
    
}
