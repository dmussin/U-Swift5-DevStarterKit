//
//  ScaleButtonStyle.swift
//  Swift5 - DSK - Waltz
//
//  Created by Daniyar Mussin on 13/03/2021.
//

import SwiftUI

struct ScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.90 : 1.00) /* turnary operator, when pressed 3% smaller, when not - original size*/
    }
}
