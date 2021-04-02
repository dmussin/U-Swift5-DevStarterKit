//
//  ContentView.swift
//  Swift5 - DSK - Calorie
//
//  Created by Daniyar Mussin on 10/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: CalorieModel
    
    @State var activeCardIndex: Int = 0
    
    var body: some View {
       
        VStack{
            
            Spacer()
            
            if activeCardIndex == 0 {
                TitleCard()
            }
            
            if activeCardIndex == 1 {
                GenderCard()
            }
            
            if activeCardIndex == 2 {
                AgeCard()
            }
            
            if activeCardIndex == 3 {
                HeightCard()
            }
            
            if activeCardIndex == 4 {
                WeightCard()
            }
            
            if activeCardIndex == 5 {
                ResultCard()
            }
            
            if activeCardIndex <= 3 || activeCardIndex == 5 {
            
               // NextButton()
               // .onTapGesture {moveToNextCard()}
            
                NextButton(index: $activeCardIndex)
                
            } else {
                CalculateButton(index: $activeCardIndex)
              /*  .onTapGesture {
                    model.calculateBMR()
                    moveToNextCard()
                } */
            }
        }
    }
    
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
