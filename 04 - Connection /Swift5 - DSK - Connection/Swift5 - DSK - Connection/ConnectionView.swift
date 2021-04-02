//
//  ConnectionView.swift
//  Swift5 - DSK - Connection
//
//  Created by Daniyar Mussin on 04/03/2021.
//

import SwiftUI

struct ConnectionView: View {
    let imageName: String
    
    var body: some View{
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 80, height: 80)
            .clipShape(Circle())
           
         
        
        
    }
}
