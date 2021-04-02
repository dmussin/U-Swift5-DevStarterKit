//
//  ContentView.swift
//  TheVisionBoard
//
//  Created by Daniyar Mussin on 04/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
    VStack(spacing: 10){
            
        HStack(spacing: 10){
            GridItemView(imageName: "tesla")
            GridItemView(imageName: "house")
            GridItemView(imageName: "pool")
        }
        
        HStack(spacing: 10){
            GridItemView(imageName: "apartment")
            GridItemView(imageName: "apple")
            GridItemView(imageName: "garage")
            }
        
        HStack(spacing: 10){
            GridItemView(imageName: "library")
            GridItemView(imageName: "husky")
            GridItemView(imageName: "garden")
            }
        
        
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
