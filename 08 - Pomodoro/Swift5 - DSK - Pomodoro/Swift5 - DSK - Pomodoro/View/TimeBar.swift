//
//  TimeBar.swift
//  Swift5 - DSK - Pomodoro
//
//  Created by Daniyar Mussin on 09/03/2021.
//

import SwiftUI

struct TimeBar: View {
    
    @EnvironmentObject var model: PomodoroModel // extension class to TimeBar and TimeLabel - main swift5-DSK-FocusApp.swift
    
    let width : CGFloat = 5
    let height : CGFloat = 350
    let cornerRadius : CGFloat = 5
    
    var progressBarHeight: CGFloat {
        
        if model.timerActive == true {
            return CGFloat(model.timeRemaining / model.timeStart * 350)
        } else {
          return 0
        }
    }
    
    
    var progressBarColor : Color {
        
        if model.timeStart == 10 {
            return Color(.systemIndigo)
        } else if model.timeStart == 25 {
            return Color(.systemOrange)
        } else if model.timeStart == 50 {
            return Color(.systemGreen)
        } else {
            return Color(.systemPurple)
        }
}
    var body: some View {
        
ZStack{
        
      RoundedRectangle(cornerRadius: cornerRadius)
        .foregroundColor(Color(.systemGray5))
        .frame(width: width, height: height, alignment: .center)
    
    VStack{
        
        Spacer()
        RoundedRectangle(cornerRadius: cornerRadius)
        .foregroundColor(progressBarColor)
        .frame(width: width, height: progressBarHeight, alignment: .center)
        
            }
        } .frame(width: width, height: height, alignment: .center)
    }
}

struct TimeBar_Previews: PreviewProvider {
    static var previews: some View {
        TimeBar()
    }
}
