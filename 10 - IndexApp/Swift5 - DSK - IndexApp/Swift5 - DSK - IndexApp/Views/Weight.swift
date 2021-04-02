//
//  WeightMetric.swift
//  Swift5 - DSK - IndexApp
//
//  Created by Daniyar Mussin on 11/03/2021.
//

import SwiftUI

struct Weight: View {
    
    @EnvironmentObject var model: UnitModel
    
    var body: some View {
        
        ZStack{
            
            CardBackground()
            
            
            if model.unit == .Metric {
                
                VStack{
                
                 CardLabel(title: "Weight", caption: "Enter Your Weight(Kg): ")
                 //Slider
                    
                    SliderValue(value: model.weight, withDecimal: false)
                    Slider(value: $model.weight, in: 50...250, step: 1.0)
                        .accentColor(.green)
                        .frame(width: 220)
                }
            }
            
            
            if model.unit == .Imperial {
                
                VStack{
                
                 CardLabel(title: "Weight", caption: "Enter Your Height(LBS): ")
                 //Slider
                    
                    SliderValue(value: model.imperialWeight, withDecimal: false)
                    Slider(value: $model.imperialWeight, in: 50...450, step: 1.0)
                        .accentColor(.green)
                        .frame(width: 220)
                }
            }
          
            
        }.frame(width: 300, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct WeightMetric_Previews: PreviewProvider {
    static var previews: some View {
        Weight()
    }
}
