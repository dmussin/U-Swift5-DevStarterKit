//
//  ContentView.swift
//  Swift5 - DSK - IndexApp
//
//  Created by Daniyar Mussin on 11/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: UnitModel
    
    @State var activeCardIndex: Int = 0
    
    
    var body: some View {
       
        VStack{
            
            Spacer()
            
            
            if activeCardIndex == 0 {
                TitleCard()
            }
            
            if activeCardIndex == 1 {
                UnitCard()
            }
            
            if activeCardIndex == 2 {
                Height()
            }
            
            if activeCardIndex == 3 {
                Weight()
            }
            
            if activeCardIndex == 4 {
                ResultCard()
            }
            
            if activeCardIndex <= 2 || activeCardIndex == 4 {
                NextButton(activeCardIndex: $activeCardIndex)
            } else {
                CalculateButton(activeCardIndex: $activeCardIndex)
            }
            
            
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
