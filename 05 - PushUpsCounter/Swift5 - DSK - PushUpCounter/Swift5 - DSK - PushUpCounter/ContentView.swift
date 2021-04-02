//
//  ContentView.swift
//  Swift5 - DSK - PushUpCounter
//
//  Created by Daniyar Mussin on 06/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
        
        PushUpButton()
        WorkoutLabel()
            
        }        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
