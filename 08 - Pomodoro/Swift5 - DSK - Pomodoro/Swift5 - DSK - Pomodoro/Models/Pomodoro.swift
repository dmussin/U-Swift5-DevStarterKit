//
//  Pomodoro.swift
//  Swift5 - DSK - Pomodoro
//
//  Created by Daniyar Mussin on 09/03/2021.
//

import SwiftUI


class PomodoroModel : ObservableObject {
    
    @Published var timeStart: Float = 0
    @Published var timeRemaining : Float = 0
    @Published var timerActive: Bool = false
    
    var timer: Timer?
    
    func runPomodoroTimer (time: Float){
        print("Timer activated")
        invalidateTimer()
        initializeTimer(time: time)
    }
    
    func resetPomodoroTimer(){
        print("Timer reset!")
        invalidateTimer()
    }
    
}

// MARK: - PomodoroModel Functions

extension PomodoroModel {
    
    func initializeTimer(time: Float) {
        timerActive = true
        timeStart = time
        timeRemaining = timeStart
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in self.runTimerActions() }
    }
    
    func invalidateTimer(){
        timerActive = false
        timer?.invalidate()
        timeStart = 0
        timeRemaining = 0
    }
    
    func runTimerActions() {
        
        if timeRemaining > 1 {
            reduceTime()
            checkRemainingTime()
        } else {
            invalidateTimer()
        }
    }
    
    func reduceTime() {
        timeRemaining -= 1
    }
    
    func checkRemainingTime() {
        print("Time remaining is \(timeRemaining)")
    }
    
}
