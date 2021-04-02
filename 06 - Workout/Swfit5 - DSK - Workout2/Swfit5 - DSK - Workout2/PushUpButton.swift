//
//  PushUpButton.swift
//  Swfit5 - DSK - Workout2
//
//  Created by Daniyar Mussin on 06/03/2021.
//

import SwiftUI

struct PushUpButton: View {
    
    
    var pushUpClass : PushUpClass = PushUpClass()
    
    
    var body: some View {
        
        Text("02")
            .font(.largeTitle)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color(.white))
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .background(Color.purple)
            .clipShape(Circle())
            .onTapGesture(perform: pushUpClass.addOnePushUp)
            .onLongPressGesture (perform: pushUpClass.resetPushUps)
    }
}

struct PushUpButton_Previews: PreviewProvider {
    static var previews: some View {
        PushUpButton()
    }
}
