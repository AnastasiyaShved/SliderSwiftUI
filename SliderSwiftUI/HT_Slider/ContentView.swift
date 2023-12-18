//
//  ContentView.swift
//  HT_Slider
//
//  Created by Apple on 14.12.23.
//

import SwiftUI

struct ContentView: View {
    
    var color: Color
    @State private var redSliderValue: Double = 100.0
    @State private var greenSliderValue: Double = 100.0
    @State private var blueSliderValue: Double = 100.0
    
    @State private var redValue: Double = 200.0
    @State private var greenValue: Double = 100.0
    @State private var blueValue: Double = 100.0
    
    var body: some View {
        
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            
            VStack (spacing: 20) {
                RectangleView(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
                RectangleView(red: redValue, green: greenValue, blue: blueValue)
                
                HStack (spacing: 1) {
                    SliderForColor(sliderValue: $redSliderValue, colorForSlider: .red)
                }
                HStack (spacing: 1) {
                    SliderForColor(sliderValue: $greenSliderValue, colorForSlider: .green)
                }
                HStack (spacing: 1) {
                    SliderForColor(sliderValue: $blueSliderValue, colorForSlider: .blue)
                }
                
                Button("Save") {
                    (redValue, greenValue, blueValue) = (redSliderValue, greenSliderValue, blueSliderValue)
                    
                }.background(.white)
                    .cornerRadius(3)
                    .frame(width: 200, height: 5)
                
                Spacer()
            }.padding()
            
        }
    }
}

#Preview {
    ContentView(color: .yellow)
}
