//
//  Slider.swift
//  HT_Slider
//
//  Created by Apple on 14.12.23.
//

import SwiftUI

struct SliderForColor: View {
    @Binding var sliderValue: Double
    var colorForSlider: Color

    var body: some View {
        HStack {
            Text ("\(Int(sliderValue))")
                .foregroundColor(.white)
                .frame(width: 60)
            
            Slider(value: $sliderValue, in: 0 ... 255, step: 1)
                .background(.clear)
                .cornerRadius(40)
                .padding()
                .accentColor(colorForSlider)
            
            TextFieldForColor(sliderValue: $sliderValue)
        }
    }
}

#Preview {
    ZStack {
        Color(.gray)
        SliderForColor(sliderValue: .constant(50.0), colorForSlider: .red)
    }
}
