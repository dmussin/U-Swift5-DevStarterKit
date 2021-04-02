//
//  SongCard.swift
//  Swift5 - DSK - Classica
//
//  Created by Daniyar Mussin on 15/03/2021.
//

import SwiftUI

struct SongCard: View {
    
    @EnvironmentObject var model: ClassicaModel
    
    let title: String
    let composer: String
    let image: String
    let type: String
    
    
    var body: some View {
        
        Button(action: {model.loadAndPlay(song: title, fileType: type) })  {
       
        ZStack{
            
            Image(image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            
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

