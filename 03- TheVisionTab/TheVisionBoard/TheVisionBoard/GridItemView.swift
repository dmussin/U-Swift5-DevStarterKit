//
//  GridItemView.swift
//  TheVisionBoard
//
//  Created by Daniyar Mussin on 04/03/2021.
//

import SwiftUI

struct GridItemView: View {
    
    let imageName: String
    
    var body: some View{
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .cornerRadius(10.0)
    }
}
