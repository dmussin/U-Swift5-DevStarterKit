//
//  GenderCard.swift
//  Swift5 - DSK - Calorie
//
//  Created by Daniyar Mussin on 10/03/2021.
//

import SwiftUI

struct GenderCard: View {
    
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        ZStack{
            
            CardBackground()
            
            VStack{
                CardLabel(title: "Gender", caption: "Select Your Gender")
                // Picker
                
                Picker("Gender", selection: $model.gender) {
                    // Creating selection options
                    Text("Male").tag(Gender.male)
                    Text("Female").tag(Gender.female)
                }.pickerStyle(SegmentedPickerStyle())
                .frame(width: 150)
                
                
            }
            
        }.frame(width: 300, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct GenderCard_Previews: PreviewProvider {
    static var previews: some View {
        GenderCard()
    }
}
