//
//  ContentView.swift
//  Swift5 - DSK - Classica
//
//  Created by Daniyar Mussin on 15/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: ClassicaModel
    
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: 30){
                      
        SongCard(title: "Waltz of the Flowers", composer: "Tchaikovsky", image: "childhood", type: "mp3")
        SongCard(title: "1812 Overture", composer: "Tchaikovsky", image: "youth", type: "mp3")
        SongCard(title: "Ride of the Valkyries", composer: "Wagner", image: "manhood", type: "mp3")
        SongCard(title: "9th Symphony (Finale)", composer: "Betchoven", image: "oldage", type: "mp3")
            }.padding(.all, 30)
          }
                HStack{
                    
                    Button(action: {model.playMusic()}) {
                        Image(systemName: "play.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemGray))
                   }
                    
                    Button(action: {model.pauseMusic()}){
                        Image(systemName: "pause.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemGray))
                    }
                    
                    Button(action: {model.stopMusic()}){
                        Image(systemName: "stop.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemGray))
                    }
            }
        }.navigationBarTitle(Text("Classica"))
           
        }
        
       
   }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
