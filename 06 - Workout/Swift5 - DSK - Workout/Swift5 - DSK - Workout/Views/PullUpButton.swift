//
//  PullUpButton.swift
//  Swift5 - DSK - Workout
//
//  Created by Daniyar Mussin on 06/03/2021.
//

import SwiftUI



struct PullUpButton: View {
    
   @StateObject var pullUpClass : PullUpClass = PullUpClass()
    
    var body: some View {
        Text("\(pullUpClass.completedPullUps)")
            .font(.largeTitle)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color(.white))
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .background(Color.purple)
            .clipShape(Circle())
            .onTapGesture(perform: pullUpClass.addOnePullUp)
            .onLongPressGesture (perform: pullUpClass.resetPullUps)
    }
}

struct PullUpButton_Previews: PreviewProvider {
    static var previews: some View {
        PullUpButton()
    }
}
