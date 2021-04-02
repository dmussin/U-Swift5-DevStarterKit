//
//  WorkoutLabel.swift
//  Swift5 - DSK - PushUpCounter
//
//  Created by Daniyar Mussin on 06/03/2021.
//

import SwiftUI

struct WorkoutLabel: View {
    
    let label: String = "PUSH-UPS"
    
    
    var body: some View {
        
        Text(label)
            .font(.caption)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color(.systemGray))
            .kerning(2) // space between the char
            .padding(.top, 20)
            .padding(.bottom, 20)
    }
}

struct WorkoutLabel_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutLabel()
    }
}
