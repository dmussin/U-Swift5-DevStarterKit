//
//  CustomView.swift
//  Swift5-DSK-HelloUniverse
//
//  Created by Daniyar Mussin on 03/03/2021.
//

import SwiftUI

struct CustomView: View {
    var body: some View{

        Text("Hello, Universe!")
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color.white)
            .background(Image("HelloUniverse_Background"))
            .shadow(radius: 3)
 
        
       
    }
}
