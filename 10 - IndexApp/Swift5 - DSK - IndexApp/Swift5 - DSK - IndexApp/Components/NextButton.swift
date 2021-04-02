//
//  NextButton.swift
//  Swift5 - DSK - IndexApp
//
//  Created by Daniyar Mussin on 11/03/2021.
//

import SwiftUI

struct NextButton: View {
    
    @Binding var activeCardIndex: Int
    
    var body: some View {
        
        Image(systemName: "chevron.right.circle")
            .font(.largeTitle)
            .foregroundColor(Color(.systemGreen))
            .frame(height: 100)
            .padding(.top, 50)
            .onTapGesture {
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


