//
//  ScaleButtonStyle.swift
//  Swift5 - DSK - Classica
//
//  Created by Daniyar Mussin on 15/03/2021.
//

import SwiftUI

struct ScaleButtonStyle: ButtonStyle {
 
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.90 : 1.00)
    }
}
