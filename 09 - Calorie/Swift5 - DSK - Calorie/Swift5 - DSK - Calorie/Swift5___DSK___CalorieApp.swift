//
//  Swift5___DSK___CalorieApp.swift
//  Swift5 - DSK - Calorie
//
//  Created by Daniyar Mussin on 10/03/2021.
//

import SwiftUI

@main
struct Swift5___DSK___CalorieApp: App {
    
    @StateObject var model: CalorieModel = CalorieModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
