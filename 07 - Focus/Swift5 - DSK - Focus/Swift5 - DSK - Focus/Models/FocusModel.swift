//
//  FocusModel.swift
//  Swift5 - DSK - Focus
//
//  Created by Daniyar Mussin on 07/03/2021.
//

import SwiftUI

class FocusModel : ObservableObject {
    
    @Published var timeStart: Float = 0
    @Published var timeRemaining : Float = 0
    @Published var timerActive: Bool = false
    
    var timer: Timer?
    
    func runFocusTimer (time: Float){
        print("Timer activated")
        invalidateTimer()
        initializeTimer(time: time)
    }
    
    func resetFocusTimer(){
        print("Timer reset!")
        invalidateTimer()
    }
    
}

// MARK: - FocusModel Functions

extension FocusModel {
    
    func initializeTimer(time: Float) {
        timerActive = true
        timeStart = time
        timeRemaining = timeStart
        timer = Timer.scheduledTimer(withTimeInterval: 60.0, repeats: true) { timer in self.runTimerActions() }
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
