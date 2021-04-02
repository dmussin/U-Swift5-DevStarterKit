//
//  ResultCard.swift
//  Swift5 - DSK - IndexApp
//
//  Created by Daniyar Mussin on 11/03/2021.
//

import SwiftUI

struct ResultCard: View {
    
    @EnvironmentObject var model: UnitModel
    
    var body: some View {
        ZStack{
            
            CardBackground()
            
            VStack{
            
            CardLabel(title: "Result", caption: "Your Body Mass Index is ")
                
            // Result
                Text(String(format: "%0.1f", model.resultBMI))
                .font(.largeTitle)
                .foregroundColor(Color(.systemGreen))
                .fontWeight(.bold)
            
        
            Text("Kg / m 2")
                .font(.caption)
                .fontWeight(.bold)
                .padding(.top, 20)
                .foregroundColor(Color(.systemGray))
                
                Text("\(model.categoryBMI)")
                .font(.caption)
                .fontWeight(.heavy)
                .padding(.top, 10)
                .foregroundColor(Color(.systemGreen))
                
                
            }
        }.frame(width: 300, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
    }
}

struct ResultCard_Previews: PreviewProvider {
    static var previews: some View {
        ResultCard()
    }
}
