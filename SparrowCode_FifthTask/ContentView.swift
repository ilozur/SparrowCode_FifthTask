//
//  ContentView.swift
//  SparrowCode_FifthTask
//
//  Created by Edmond Podlegaev on 11.12.2023.
//

import SwiftUI

var colors: [Color] = [Color.white, Color.pink, Color.yellow, Color.black]

struct ContentView: View {
    @State var rectanglePosition: CGSize = .zero
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                ForEach(colors, id: \.self) { color in
                    Rectangle()
                        .foregroundStyle(color)
                }
            }
            .ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(Color.green)
                .frame(width: 125, height: 125)
                .offset(rectanglePosition)
                .gesture(DragGesture()
                    .onChanged({ gesture in
                        rectanglePosition = gesture.translation
                    })
                )
        }
    }
}

#Preview {
    ContentView()
}
