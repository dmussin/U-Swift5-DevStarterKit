//
//  UnitModel.swift
//  Swift5 - DSK - IndexApp
//
//  Created by Daniyar Mussin on 11/03/2021.
//

import SwiftUI

class UnitModel: ObservableObject {
    
    @Published var unit: Unit = Unit.Metric
    @Published var height: Double = 170
    @Published var imperialHeightFT: Double = 5
    @Published var imperialHeightIN: Double = 8.5
    @Published var weight: Double = 70
    @Published var imperialWeight: Double = 150
    @Published var resultBMI: Double = 0

    
    func calculateBMI() {
        switch unit {
        case.Metric:
            resultBMI = weight / pow(height / 100, 2)
        case.Imperial:
            let totalHeight = imperialHeightIN + (imperialHeightFT * 12)
            resultBMI = 703 * (imperialWeight / pow(totalHeight, 2))
        }
    }
 
    var categoryBMI: String {
    
        switch resultBMI {
        case 0..<16:
            return "Severe Thinness"
        case 16..<17:
            return "Moderate Thinness"
        case 17..<18.5:
            return "Mild Thinness"
        case 18.5..<25:
            return "Normal"
        case 25..<30:
            return "Overweight"
        case 30..<35:
            return "Obese Class |"
        case 35..<40:
            return "Obese Class ||"
        case 40...:
            return "Obese Class |||"
        default:
            return "Error"
        }
        
    }
    

}
