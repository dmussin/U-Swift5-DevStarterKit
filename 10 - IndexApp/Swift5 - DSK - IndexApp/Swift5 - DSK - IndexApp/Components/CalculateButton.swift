//
//  CalculateButton.swift
//  Swift5 - DSK - IndexApp
//
//  Created by Daniyar Mussin on 11/03/2021.
//

import SwiftUI

struct CalculateButton: View {
    
    @Binding var activeCardIndex: Int
    @EnvironmentObject var model: UnitModel
    
    var body: some View {
       
    Text("Calculate")
        .font(.caption2)
        .fontWeight(.bold)
        .padding(.all, 8)
        .foregroundColor(Color(.white))
        .background(Color(.systemGreen))
        .cornerRadius(20)
        .frame(height: 100)
        .padding(.top, 50)
        .onTapGesture {
            model.calculateBMI()
            moveToNextCard()
        }
    }
    
    
    func moveToNextCard(){
        
        withAnimation{
        
        if activeCardIndex < 4 {
            activeCardIndex += 1
        } else {
            activeCardIndex = 0
        }
      }
    }
    
    
}

