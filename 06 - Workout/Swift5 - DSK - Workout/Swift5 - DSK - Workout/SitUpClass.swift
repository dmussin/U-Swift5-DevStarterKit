//
//  SitUpClass.swift
//  Swift5 - DSK - Workout
//
//  Created by Daniyar Mussin on 06/03/2021.
//

import SwiftUI

class SitUpClass: ObservableObject{
    
  @Published  var completedSithUps: Int = 0
    
    func addOneSithUp(){
        completedSithUps += 1
        print(completedSithUps)
        generateHapticFeedback()
    }
    
    
    func resetSitUps(){
        completedSithUps = 0
        print(completedSithUps)
        generateHapticFeedback()
    }
       
    func generateHapticFeedback() {
        UINotificationFeedbackGenerator().notificationOccurred(.success)
    }
    
}
