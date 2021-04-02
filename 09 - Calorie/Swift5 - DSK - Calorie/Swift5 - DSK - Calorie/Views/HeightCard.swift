//
//  HeightCard.swift
//  Swift5 - DSK - Calorie
//
//  Created by Daniyar Mussin on 10/03/2021.
//

import SwiftUI

struct HeightCard: View {
    
    
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        ZStack{
            
            CardBackground()
            
            VStack{
                CardLabel(title: "Height", caption: "Enter Your Height(Cm): ")
                // Slider
                
                SliderValue(value: model.height)
                Slider(value: $model.height, in: 100...220, step: 1.0)
                    .accentColor(.orange)
                    .frame(width: 220)
                
            }
            
        }.frame(width: 300, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct HeightCard_Previews: PreviewProvider {
    static var previews: some View {
        HeightCard()
    }
}
