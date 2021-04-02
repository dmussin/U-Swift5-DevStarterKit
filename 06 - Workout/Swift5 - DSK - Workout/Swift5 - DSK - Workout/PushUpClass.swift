//
//  PushUpClass.swift
//  Swift5 - DSK - Workout
//
//  Created by Daniyar Mussin on 06/03/2021.
//

import SwiftUI

class PushUpClass : ObservableObject{
    
   @Published var completedOushUps: Int = 0
    
    func addOnePushUp(){
        completedOushUps += 1
        print(completedOushUps)
        generateHapticFeedback()
    }
    
    
    func resetPushUps(){
        completedOushUps = 0
        print(completedOushUps)
        generateHapticFeedback()
    }
    
    func generateHapticFeedback() {
        UINotificationFeedbackGenerator().notificationOccurred(.success)
    }
        
}
