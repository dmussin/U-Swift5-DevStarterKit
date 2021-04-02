//
//  PushUpClass.swift
//  Swift5 - DSK - PushUpCounter
//
//  Created by Daniyar Mussin on 06/03/2021.
//

import SwiftUI

class PushUpClass: ObservableObject{
    
    @Published var completedPushUps: Int = 0
    
    
    func addOnePushUp() {
        completedPushUps += 1 // completedpushups = completedpushups + 1
        print(completedPushUps)
        
    }
    
    func resetPushUps(){
        completedPushUps = 0
    }
}
