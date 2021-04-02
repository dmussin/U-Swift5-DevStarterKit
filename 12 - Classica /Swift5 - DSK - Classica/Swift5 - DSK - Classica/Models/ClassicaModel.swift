//
//  ClassicaModel.swift
//  Swift5 - DSK - Classica
//
//  Created by Daniyar Mussin on 15/03/2021.
//

import SwiftUI
import AVKit


class ClassicaModel: ObservableObject {
    
    var audioPlayer: AVAudioPlayer?
    
    func loadMusic(fileName: String, fileType: String){
        
        if let filePath = Bundle.main.path(forResource: fileName, ofType: fileType){
            let fileURL = URL(fileURLWithPath: filePath)
            do{
                audioPlayer = try AVAudioPlayer.init(contentsOf: fileURL)
            } catch {
                print("Error - File not Found")
            }
        }
    }
    
    
    func loadAndPlay(song: String, fileType: String){
        loadMusic(fileName: song, fileType: fileType)
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
        audioPlayer = nil
    }
    
}
