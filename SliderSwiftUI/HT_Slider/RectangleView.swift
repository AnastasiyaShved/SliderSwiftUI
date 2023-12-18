//
//  Rectangle.swift
//  HT_Slider
//
//  Created by Apple on 14.12.23.
//

import SwiftUI

struct RectangleView: View {
    
    var red: Double
    var green: Double
    var blue: Double
    
    var body: some View {
        
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .cornerRadius(20.0)
            .overlay(
                RoundedRectangle(cornerRadius: 20.0, style: .continuous)
                    .stroke(Color.white, lineWidth: 5))
            .frame(height: 100)
        
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.gray)
            RectangleView(red: 55, green: 100, blue: 13)
        }
    }
}
