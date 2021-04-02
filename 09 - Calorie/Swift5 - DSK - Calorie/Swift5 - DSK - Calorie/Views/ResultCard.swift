//
//  ResultCard.swift
//  Swift5 - DSK - Calorie
//
//  Created by Daniyar Mussin on 10/03/2021.
//

import SwiftUI

struct ResultCard: View {
    
    @EnvironmentObject var model: CalorieModel
    
    
    var body: some View {
        ZStack{
            
            CardBackground()
            
            VStack{
                CardLabel(title: "Result", caption: "Your Basel Metabolic Rate is ")
                
                // Result goes here.
                Text(String(format: "%0.0f", model.resultBMR))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemOrange))
                
                Text("Calories per day.")
                    .font(.caption)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                    .foregroundColor(Color(.systemGray ))
            }
            
        }.frame(width: 300, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct ResultCard_Previews: PreviewProvider {
    static var previews: some View {
        ResultCard()
    }
}
