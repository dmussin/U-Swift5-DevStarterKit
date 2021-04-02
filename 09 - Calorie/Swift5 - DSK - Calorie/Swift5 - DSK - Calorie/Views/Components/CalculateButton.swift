//
//  CalculateButton.swift
//  Swift5 - DSK - Calorie
//
//  Created by Daniyar Mussin on 10/03/2021.
//

import SwiftUI

struct CalculateButton: View {
    
    @Binding var index: Int
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        Text("Calculate")
            .font(.caption2)
            .fontWeight(.bold)
            .padding(.all, 8)
            .foregroundColor(Color(.white))
            .background(Color(.systemOrange))
            .cornerRadius(20)
            .frame(height: 100)
            .padding(.top, 50)
            .onTapGesture {
                model.calculateBMR()
                moveToNextCard()
            }
    }
    
    
    func moveToNextCard(){
        
        withAnimation{
        
        if index <= 4 {
        index += 1
        } else {
            index = 0
        }
      }
    }
    
    
}


