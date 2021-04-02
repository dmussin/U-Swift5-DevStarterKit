//
//  ContentView.swift
//  Swift5 - DSK - Focus
//
//  Created by Daniyar Mussin on 07/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
     
        VStack{
            
            TimeBar()
            TimeLabel()
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
