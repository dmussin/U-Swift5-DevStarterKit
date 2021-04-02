//
//  SitUpButton.swift
//  Swift5 - DSK - Workout
//
//  Created by Daniyar Mussin on 06/03/2021.
//

import SwiftUI

struct SitUpButton: View {
    
    
  @StateObject  var sitUpClass : SitUpClass = SitUpClass()
    
    var body: some View {
       
        Text("\(sitUpClass.completedSithUps)")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(.white))
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .background(Color.yellow)
                .clipShape(Circle())
            .onTapGesture(perform: sitUpClass.addOneSithUp)
            .onLongPressGesture (perform: sitUpClass.resetSitUps)
        }
    }

struct SitUpButton_Previews: PreviewProvider {
    static var previews: some View {
        SitUpButton()
    }
}
