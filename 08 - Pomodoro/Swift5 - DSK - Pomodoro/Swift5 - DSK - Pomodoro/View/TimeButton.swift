//
//  TimeButton.swift
//  Swift5 - DSK - Pomodoro
//
//  Created by Daniyar Mussin on 09/03/2021.
//

import SwiftUI

struct TimeButton: View {
    
      
        @EnvironmentObject var model: PomodoroModel
       
        let systemName: String
        let color: Color
        let time: Float
        
    var opacity: Double {
        if model.timerActive == true {
            return 0.3
        } else {
            return 1
        }
    }
        
        
        var body: some View {
            
            Image(systemName: systemName)
                .font(.largeTitle)
                .foregroundColor(color)
                .opacity(opacity)
                .onTapGesture() {self.model.runPomodoroTimer(time: time)}
                .onLongPressGesture (perform: model.resetPomodoroTimer)
        
    }
}

//struct TimeButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TimeButton()
//    }
//}
