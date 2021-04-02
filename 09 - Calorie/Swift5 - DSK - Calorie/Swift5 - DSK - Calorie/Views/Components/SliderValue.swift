//
//  SliderValue.swift
//  Swift5 - DSK - Calorie
//
//  Created by Daniyar Mussin on 10/03/2021.
//

import SwiftUI

struct SliderValue: View {
    
    let value: Double
    
    
    var body: some View {
        
        // Formating Double to String. 
        Text(String(format: "%0.0f", value))
            .font(.title)
            .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color(.white))
            .background(Color(.systemOrange))
            .clipShape(Circle())
    }
}


