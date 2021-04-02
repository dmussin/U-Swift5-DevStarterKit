//
//  PushUpClass.swift
//  Swfit5 - DSK - Workout2
//
//  Created by Daniyar Mussin on 06/03/2021.
//

import SwiftUI

class PushUpClass{
    
    var completedOushUps: Int = 0
    
    func addOnePushUp(){
        completedOushUps += 1
        print(completedOushUps)
    }
    
    
    func resetPushUps(){
        completedOushUps = 0
        print(completedOushUps)
    }
    
}
