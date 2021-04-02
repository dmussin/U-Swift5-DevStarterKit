//
//  Swift5___DSK___PomodoroApp.swift
//  Swift5 - DSK - Pomodoro
//
//  Created by Daniyar Mussin on 09/03/2021.
//

import SwiftUI

@main
struct Swift5___DSK___PomodoroApp: App {
    
    @StateObject var model: PomodoroModel = PomodoroModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(model)
        }
    }
}
