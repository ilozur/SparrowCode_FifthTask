//
//  ContentView.swift
//  SparrowCode_FifthTask
//
//  Created by Edmond Podlegaev on 11.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .foregroundStyle(Color.white)
            Rectangle()
                .foregroundStyle(Color.pink)
            Rectangle()
                .foregroundStyle(Color.yellow)
            Rectangle()
                .foregroundStyle(Color.black)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
