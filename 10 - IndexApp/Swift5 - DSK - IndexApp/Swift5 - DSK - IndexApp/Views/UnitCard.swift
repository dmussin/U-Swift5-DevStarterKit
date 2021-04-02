//
//  UnitCard.swift
//  Swift5 - DSK - IndexApp
//
//  Created by Daniyar Mussin on 11/03/2021.
//

import SwiftUI

struct UnitCard: View {
    
    @EnvironmentObject var model: UnitModel
    
    var body: some View {
       
    ZStack{
            CardBackground()
        VStack{
            CardLabel(title: "Unit", caption: "Select Unit Type")
            // Picker
            Picker("Unit", selection: $model.unit) {
                // Creating selection options
                Text("Metric").tag(Unit.Metric)
                Text("Imperial").tag(Unit.Imperial)
            }.pickerStyle(SegmentedPickerStyle())
             .frame(width: 150)
                
                
           }
        }.frame(width: 300, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct UnitCard_Previews: PreviewProvider {
    static var previews: some View {
        UnitCard()
    }
}
