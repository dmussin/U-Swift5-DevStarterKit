//
//  CardBackground.swift
//  Swift5 - DSK - IndexApp
//
//  Created by Daniyar Mussin on 11/03/2021.
//

import SwiftUI

struct CardBackground: View {
    var body: some View {
        
        Color(.white)
            .cornerRadius(20)
            .shadow(color: Color(.green), radius: 5, x: 2, y: 2)
        
    }
}

struct CardBackground_Previews: PreviewProvider {
    static var previews: some View {
        CardBackground()
    }
}
