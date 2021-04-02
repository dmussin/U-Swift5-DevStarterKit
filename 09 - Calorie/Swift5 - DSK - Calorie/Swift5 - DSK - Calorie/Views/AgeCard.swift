//
//  AgeCard.swift
//  Swift5 - DSK - Calorie
//
//  Created by Daniyar Mussin on 10/03/2021.
//

import SwiftUI

struct AgeCard: View {
    
    
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        ZStack{
            
            CardBackground()
            
            VStack{
                CardLabel(title: "Age", caption: "Enter Your Age")
                
                // Slider
                SliderValue(value: model.age)
                Slider(value: $model.age, in: 15...80, step: 1.0)
                    .accentColor(.orange)
                    .frame(width: 220)
                
            }
            
        }.frame(width: 300, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct AgeCard_Previews: PreviewProvider {
    static var previews: some View {
        AgeCard()
    }
}
