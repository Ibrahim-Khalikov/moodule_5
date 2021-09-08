//
//  Rectangle.swift
//  Module-5
//
//  Created by cloud_vfx on 02/09/21.
//

import SwiftUI

struct RectangleCard: View {
    
    var color = Color.white
    var text: String
    
    var body: some View {
    
        ZStack{
            Rectangle()
                .foregroundColor(color)
                .cornerRadius(10)
                .shadow(radius: 5)
            
            Text(text)
                .bold()
            foregroundColor(.white)
            
            
        }
    }
}

struct RectangleCard_Previews: PreviewProvider {
    static var previews: some View {
        RectangleCard(color: .white, text: "dfa")
    }
}
