//
//  ContentView.swift
//  Swift5 - DSK - Pomodoro
//
//  Created by Daniyar Mussin on 09/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
        
        VStack{
            
            TimeBar()
            TimeLabel()
            
            HStack(spacing: 30){
                
                TimeButton(systemName: "10.circle", color: Color(.systemIndigo), time: 10)
                TimeButton(systemName: "25.circle", color: Color(.systemOrange), time: 25)
                TimeButton(systemName: "50.circle", color: Color(.systemGreen), time: 50)
                
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
