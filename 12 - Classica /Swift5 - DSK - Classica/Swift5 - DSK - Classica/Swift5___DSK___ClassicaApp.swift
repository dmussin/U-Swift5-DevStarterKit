//
//  Swift5___DSK___ClassicaApp.swift
//  Swift5 - DSK - Classica
//
//  Created by Daniyar Mussin on 15/03/2021.
//

import SwiftUI

@main
struct Swift5___DSK___ClassicaApp: App {
    
    @StateObject var model: ClassicaModel = ClassicaModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
                .onAppear {
                    UIApplication.shared.isIdleTimerDisabled = true
                }
                .onDisappear {
                    UIApplication.shared.isIdleTimerDisabled = false
                }
        }
    }
}
