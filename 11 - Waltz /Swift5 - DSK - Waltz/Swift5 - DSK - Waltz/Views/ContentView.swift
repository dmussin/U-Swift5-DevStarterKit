//
//  ContentView.swift
//  Swift5 - DSK - Waltz
//
//  Created by Daniyar Mussin on 13/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    
    @EnvironmentObject var model: WaltzModel
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                 
                SongCard(title: "Waltz of the Flowers", composer: "Tchaikovsky", image: "childhood")
                .padding(.all, 30)
                
                
            // Buttons
                
                HStack{
                    
                    Button(action: {model.playMusic()}) {
                        Image(systemName: "play.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemGray))
                    }
                    
                    Button(action: {model.pauseMusic()}) {
                        Image(systemName: "pause.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemGray))
                    }
                    
                    Button(action: {model.stopMusic()}) {
                        Image(systemName: "stop.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemGray))
                    }
                }
                
            }.navigationBarTitle(Text("Waltz"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
