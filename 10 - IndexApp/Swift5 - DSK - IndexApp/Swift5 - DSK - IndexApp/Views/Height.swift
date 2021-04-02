//
//  HeightImperial.swift
//  Swift5 - DSK - IndexApp
//
//  Created by Daniyar Mussin on 11/03/2021.
//

import SwiftUI

struct Height: View {
    
    @EnvironmentObject var model: UnitModel
    
    var body: some View {
        
        ZStack{
            
            CardBackground()
            
            
            if model.unit == .Metric {
            
            
                VStack{
                
                 CardLabel(title: "Height", caption: "Enter Your Height(Cm): ")
                 //Slider
                    
                    SliderValue(value: model.height, withDecimal: false)
                    Slider(value: $model.height, in: 50...250, step: 1.0)
                        .accentColor(.green)
                        .frame(width: 220)
                }
            }
            
                if model.unit == .Imperial {
                
                VStack{
                
                 CardLabel(title: "Height", caption: "Enter Your Height(Ft & In.: ")
                 //Slider
                    
                 HStack(spacing: 35){
                 
                     VStack{
                        SliderValue(value: model.imperialHeightFT, withDecimal: false)
                 
                    Text("FEET")
                     .font(.caption2)
                     .foregroundColor(Color(.systemGray2))
                    Slider(value: $model.imperialHeightFT, in: 1...10, step: 1.0)
                        .accentColor(.green)
                        .frame(width: 100)
                     }
                     
                      VStack{
                        SliderValue(value: model.imperialHeightIN, withDecimal: true)
                     Text("INCHES")
                         .font(.caption2)
                         .foregroundColor(Color(.systemGray2))
                     Slider(value: $model.imperialHeightIN, in: 1.0...10.0, step: 0.5)
                         .accentColor(.green)
                         .frame(width: 100)
                 
                     }
                 }
            }
        }
                
            
        }.frame(width: 300, height: 500)
    }
}

