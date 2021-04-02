//
//  ContentView.swift
//  Swfit5 - DSK - Workout2
//
//  Created by Daniyar Mussin on 06/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        WorkoutLabelView(label: "Pushout")
        PushUpButton()
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
