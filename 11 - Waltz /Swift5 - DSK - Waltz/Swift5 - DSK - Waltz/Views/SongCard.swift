//
//  SongCard.swift
//  Swift5 - DSK - Waltz
//
//  Created by Daniyar Mussin on 13/03/2021.
//

import SwiftUI

struct SongCard: View {
    
    @EnvironmentObject var model: WaltzModel

    let title: String
    let composer: String
    let image: String
    
    var body: some View {
        
        
        Button(action: {model.loadAndPlay() }) {
            ZStack{
                
                Image(image)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                
                
                VStack{
                    
                    HStack{
                        
                        SongInfo(title: title, composer: composer)
                        Spacer()
                        
                    }
                    
                    
                    Spacer()
                    
                    
                }
                
                
            }.frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
        }.buttonStyle(ScaleButtonStyle())
        
        
    }
}

 
