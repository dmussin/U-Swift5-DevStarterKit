//
//  WorkoutLabelView.swift
//  Swift5 - DSK - Workout
//
//  Created by Daniyar Mussin on 06/03/2021.
//

import SwiftUI

struct WorkoutLabelView: View {
    
    let label: String
    
    var body: some View {
       Text(label)
        .font(.caption)
        .fontWeight(.bold)
        .foregroundColor(Color(.systemGray))
        .kerning(2)
        .padding(.top, 20)
        .padding(.bottom, 20)
    }
    
    
}

