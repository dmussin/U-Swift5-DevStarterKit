//
//  SongInfo.swift
//  Swift5 - DSK - Classica
//
//  Created by Daniyar Mussin on 15/03/2021.
//

import SwiftUI

struct SongInfo: View {
    
    let title: String
    let composer: String
    
    var body: some View {
        
        
        VStack{
            HStack{
                Text(title)
                    .font(.headline)
                    .foregroundColor(Color(.white))
                Spacer()
            }
                HStack{
                 Text(composer)
                    .font(.caption)
                    .foregroundColor(Color(.white))
                    Spacer()
                }
            }.shadow(color: .gray, radius: 2)
            .padding(.all, 20)
        }
    }



