//
//  WeightCard.swift
//  Swift5 - DSK - Calorie
//
//  Created by Daniyar Mussin on 10/03/2021.
//

import SwiftUI

struct WeightCard: View {
    
    
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        ZStack{
            
            CardBackground()
            
            VStack{
                CardLabel(title: "Weight", caption: "Enter Your Weight(Kg): ")
                // Slider
                
                SliderValue(value: model.weight)
                Slider(value: $model.weight, in: 45...150, step: 1.0)
                    .accentColor(.orange)
                    .frame(width: 220)
            }
            
        }.frame(width: 300, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct WeightCard_Previews: PreviewProvider {
    static var previews: some View {
        WeightCard()
    }
}
