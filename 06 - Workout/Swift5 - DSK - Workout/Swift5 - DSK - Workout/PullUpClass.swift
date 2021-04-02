//
//  PullUpClass.swift
//  Swift5 - DSK - Workout
//
//  Created by Daniyar Mussin on 06/03/2021.
//

import SwiftUI

class PullUpClass: ObservableObject{
    
  @Published  var completedPullUps: Int = 0
    
    func addOnePullUp(){
        completedPullUps += 1
        print(completedPullUps)
        generateHapticFeedback()
    }
    

    func resetPullUps(){
        completedPullUps = 0
        print(completedPullUps)
        generateHapticFeedback()
    }
    
    func generateHapticFeedback() {
        UINotificationFeedbackGenerator().notificationOccurred(.success)
    }
}
