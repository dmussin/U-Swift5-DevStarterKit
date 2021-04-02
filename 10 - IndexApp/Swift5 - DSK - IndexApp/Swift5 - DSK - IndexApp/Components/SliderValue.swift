//
//  SliderValue.swift
//  Swift5 - DSK - IndexApp
//
//  Created by Daniyar Mussin on 11/03/2021.
//

import SwiftUI

struct SliderValue: View {
    
    let value: Double
    let withDecimal: Bool
   
    
    var body: some View {
        
        if withDecimal == true{
            
            //Formation Double to String.
            Text(String(format: "%.1f", value))
                .font(.title)
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(.white))
                .background(Color(.systemGreen))
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
        } else {
        
        //Formation Double to String.
        Text(String(format: "%0.0f", value))
            .font(.title)
            .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color(.white))
            .background(Color(.systemGreen))
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }
    }
}

