//
//  ContentView.swift
//  ContentViewUI
//
//  Created by Ярослав Кочкин on 15.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)

    
    var body: some View {
        VStack {
            ViewContent()
            ColorSliderView(value: $redSliderValue, tintColor: .red)
            ColorSliderView(value: $greenSliderValue, tintColor: .green)
            ColorSliderView(value: $blueSliderValue, tintColor: .blue)

            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ColorSliderView: View {
    
    @Binding var value: Double
    let tintColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
            Slider(value: $value, in: 0...255, step: 1)
                .tint(tintColor)
        }
    }
}
