//
//  ContentView.swift
//  SparrowCode_FifthTask
//
//  Created by Edmond Podlegaev on 11.12.2023.
//

import SwiftUI

var colors: [Color] = [.white, .pink, .yellow, .black]
var monoColors: [Color] = [.black, .white, .black, .white]

struct ContentView: View {
    // TODO: UIScreen.main is deprecated, I need to work with it.
    @State private var rectangleLocation: CGPoint = CGPoint(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)

    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                ForEach(monoColors, id: \.self) { color in
                    Rectangle()
                        .foregroundStyle(color)
                }
            }
            
            ZStack {
                VStack(spacing: 0) {
                    ForEach(colors, id: \.self) { monoColor in
                        Rectangle()
                            .foregroundStyle(monoColor)
                    }
                }
                
                universalRectangle
                    .gesture(DragGesture()
                        .onChanged { gesture in
                            rectangleLocation = gesture.location
                        }
                    )
                    .blendMode(.destinationOut)
            }
            .compositingGroup()
        }
        .ignoresSafeArea()
    }
    
    var universalRectangle: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 125, height: 125)
            .position(rectangleLocation)
    }
}

#Preview {
    ContentView()
}
