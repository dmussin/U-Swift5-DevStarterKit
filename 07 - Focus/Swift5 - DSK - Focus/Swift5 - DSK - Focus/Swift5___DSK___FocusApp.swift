//
//  Swift5___DSK___FocusApp.swift
//  Swift5 - DSK - Focus
//
//  Created by Daniyar Mussin on 07/03/2021.
//

import SwiftUI

@main
struct Swift5___DSK___FocusApp: App {
    
    @StateObject var model: FocusModel = FocusModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(model)
        }
    }
} 
