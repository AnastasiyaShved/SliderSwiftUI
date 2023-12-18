//
//  TextField.swift
//  HT_Slider
//
//  Created by Apple on 14.12.23.
//

import SwiftUI

struct TextFieldForColor: View {
    
    @Binding var sliderValue: Double
    @State var showAlert = false
    
    var body: some View {
        TextField("255", text: newText)
            .textFieldStyle(.roundedBorder)
            .frame(width: 60, height: 10)
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Ошибка"),
                      message: Text("Введите значение от 0 до 255"))
            }
    }
}

extension TextFieldForColor {
    var newText: Binding<String> {
        Binding<String>(
            get: {
                "\(lround(sliderValue))"
            },
            set: {
                if $0.count > 0 {
                    if let number = NumberFormatter().number(from: $0) {
                        let doubleValue = number.doubleValue
                        switch doubleValue {
                        case ...(-1):
                            sliderValue = 0
                            showAlert = true
                        case 0...255:
                            sliderValue = doubleValue
                        default:
                            sliderValue = 255
                            showAlert = true
                        }
                    } else {
                        sliderValue = 0
                        showAlert = true
                    }
                } else {
                    sliderValue = 0
                }
            }
        )
    }
}

#Preview {
    ZStack {
        Color(.gray)
        TextFieldForColor(sliderValue: .constant(45.3))
    }
}
