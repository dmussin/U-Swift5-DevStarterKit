//
//  TitleCard.swift
//  Swift5 - DSK - Calorie
//
//  Created by Daniyar Mussin on 10/03/2021.
//

import SwiftUI

struct TitleCard: View {
    var body: some View {
        ZStack{
            
         CardBackground()
         CardLabel(title: "Calorie", caption: "BRM Calculator")
            
        } .frame(width: 300, height: 500)
    }
}

struct TitleCard_Previews: PreviewProvider {
    static var previews: some View {
        TitleCard()
    }
}
