//
//  ContentView.swift
//  Swift5 - DSK - Workout
//
//  Created by Daniyar Mussin on 06/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
        
        VStack{
            PushUpButton()
            WorkoutLabelView(label: "Push Ups")
        }
            
    HStack(spacing: 75){
        VStack{
            SitUpButton()
            WorkoutLabelView(label: "Sit Ups")
        }
        
        VStack{
            PullUpButton()
            WorkoutLabelView(label: "Pull Ups")
                }
            }
        }
    }
}
        



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
