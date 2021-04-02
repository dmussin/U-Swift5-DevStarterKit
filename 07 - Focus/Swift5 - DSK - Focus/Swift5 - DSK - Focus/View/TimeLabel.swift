//
//  TimeLabel.swift
//  Swift5 - DSK - Focus
//
//  Created by Daniyar Mussin on 07/03/2021.
//

import SwiftUI

struct TimeLabel: View {
    
    @EnvironmentObject var model: FocusModel
    
    let compeltedIcon : String = "checkmark.circle.fill"
    var timeRemainingString : String { String(model.timeRemaining) }
    
    var body: some View {
        
        ZStack{
            
            if model.timerActive == true {
                
                Text(timeRemainingString)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                    .foregroundColor(Color(.systemGray))
                    .onTapGesture() { model.runFocusTimer(time: 10)}
                    .onLongPressGesture(perform: model.resetFocusTimer)
                
                
//                if model.timeRemaining >= 6 {
//                    Text(timeRemainingString)
//                        .foregroundColor(Color(.systemGreen))
//                } else if model.timeRemaining >= 3 {
//                    Text(timeRemainingString)
//                        .foregroundColor(Color(.systemOrange))
//                } else {
//                    Text(timeRemainingString)
//                        .foregroundColor(Color(.systemRed))
//                }
            } else {
                
                Image(systemName: compeltedIcon)
                  .font(.largeTitle)
                  .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                  .foregroundColor(Color(.systemPurple))
                    .onTapGesture() { model.runFocusTimer(time: 10)}
                
            }
            
      

 
        }
    }
}

struct TimeLabel_Previews: PreviewProvider {
    static var previews: some View {
        TimeLabel()
    }
}
