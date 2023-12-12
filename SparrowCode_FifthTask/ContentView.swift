//
//  ContentView.swift
//  SparrowCode_FifthTask
//
//  Created by Edmond Podlegaev on 11.12.2023.
//

import SwiftUI

var colors: [Color] = [.white, .pink, .yellow, .black]
var monoColors: [Color] = [.white, .black, .white, .black]

struct ContentView: View {
    @State var rectanglePosition: CGSize = .zero

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
                
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 125, height: 125)
                    .offset(rectanglePosition)
                    .gesture(DragGesture()
                        .onChanged { gesture in
                            rectanglePosition = gesture.translation
                        }
                    )
                    .blendMode(.destinationOut)
            }
            .compositingGroup()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
