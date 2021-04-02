//
//  Swift5___DSK___IndexAppApp.swift
//  Swift5 - DSK - IndexApp
//
//  Created by Daniyar Mussin on 11/03/2021.
//

import SwiftUI

@main
struct Swift5___DSK___IndexAppApp: App {
    
    @StateObject var model: UnitModel = UnitModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
