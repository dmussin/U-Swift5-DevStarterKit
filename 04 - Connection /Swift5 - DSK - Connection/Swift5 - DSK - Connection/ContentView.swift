//
//  ContentView.swift
//  Swift5 - DSK - Connection
//
//  Created by Daniyar Mussin on 04/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
    
    ZStack{
        
        
        Divider().rotationEffect(.degrees(-30))
        Divider().rotationEffect(.degrees(30))
        Divider().rotationEffect(.degrees(90))
        
        ConnectionView(imageName: "yourname")
        
        HStack{
           ConnectionView(imageName: "monica")
            .rotationEffect(.degrees(-30))
            Spacer()
           ConnectionView(imageName: "ross")
            .rotationEffect(.degrees(-30))
        }  .rotationEffect(.degrees(30))
        
     
        HStack{
           ConnectionView(imageName: "joey")
            .rotationEffect(.degrees(-90))
            
            Spacer()
           ConnectionView(imageName: "chandler")
            .rotationEffect(.degrees(-90))
            
        }  .rotationEffect(.degrees(90))
        
        
        HStack{
           
           ConnectionView(imageName: "rachel")
            
            .rotationEffect(.degrees(30))
            
            Spacer()
            
           ConnectionView(imageName: "phoebe")
            .rotationEffect(.degrees(30))
            
        }  .rotationEffect(.degrees(-30))
        
    }.frame(width: 300, height: 300)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
