//
//  CalorieModel.swift
//  Swift5 - DSK - Calorie
//
//  Created by Daniyar Mussin on 10/03/2021.
//

import SwiftUI

class CalorieModel: ObservableObject {
    @Published var gender: Gender = Gender.male
    @Published var age: Double = 30
    @Published var height: Double = 170
    @Published var weight: Double = 60
    @Published var resultBMR: Double = 0
    
    func calculateBMR() {
        
//        if gender == Gender.male {
//            //male calc
//            resultBMR = (10 * weight) + (6.25 * height) - (5 * age) + 5
//
//        } else {
//            //female calc
//            resultBMR = (10 * weight) + (6.25 * height) - (5 * age) - 161
//        }
        
        
        // Using SWITCH Statement
        
        switch gender {
        case .male:
            //statement
            resultBMR = (10 * weight) + (6.25 * height) - (5 * age) + 5
    
        case .female:
            // statement
            resultBMR = (10 * weight) + (6.25 * height) - (5 * age) - 161
        }
    }
}
