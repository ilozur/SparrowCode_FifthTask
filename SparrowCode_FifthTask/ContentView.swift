//
//  ContentView.swift
//  SparrowCode_FifthTask
//
//  Created by Edmond Podlegaev on 11.12.2023.
//

import SwiftUI

var colors: [Color] = [Color.white, Color.pink, Color.yellow, Color.black]

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            ForEach(colors, id: \.self) { color in
                Rectangle()
                    .foregroundStyle(color)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
