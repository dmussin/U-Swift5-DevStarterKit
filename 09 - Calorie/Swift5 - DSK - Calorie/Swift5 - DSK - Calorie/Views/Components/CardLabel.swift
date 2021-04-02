//
//  CardLabel.swift
//  Swift5 - DSK - Calorie
//
//  Created by Daniyar Mussin on 10/03/2021.
//

import SwiftUI

struct CardLabel: View {
    
    let title: String
    let caption: String
    
    
    var body: some View {
        
        VStack{
            
            Text("\(title)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(.systemOrange))
                .padding(.bottom, 10)
            
            Text("\(caption)")
                .font(.caption)
                .foregroundColor(Color(.systemGray))
                .padding(.bottom, 30)
            
        }
    }
}
