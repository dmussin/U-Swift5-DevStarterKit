//
//  Swift5___DSK___WaltzApp.swift
//  Swift5 - DSK - Waltz
//
//  Created by Daniyar Mussin on 13/03/2021.
//

import SwiftUI

@main
struct Swift5___DSK___WaltzApp: App {
    
    @StateObject var model: WaltzModel = WaltzModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
                .onAppear{
                    UIApplication.shared.isIdleTimerDisabled = true /* Preventing from sleeping screen*/
                }
                .onDisappear{
                    UIApplication.shared.isIdleTimerDisabled = false
                }
        }
    }
}
