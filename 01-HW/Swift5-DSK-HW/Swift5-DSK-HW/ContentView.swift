//
//  ContentView.swift
//  Swift5-DSK-HW
//
//  Created by Daniyar Mussin on 03/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("U-Swift5-Developer Starting Kit")
            .fontWeight(.bold)
            .font(.title)
            .frame(width: 10000, height: 1000)
            .background(Color(.systemTeal))
            .foregroundColor(.white)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
