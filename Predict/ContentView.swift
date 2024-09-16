//
//  ContentView.swift
//  Predict
//
//  Created by Theodore Utomo on 9/16/24.
//

import SwiftUI

struct ContentView: View {
    @State private var prediction = ""
    var body: some View {
        VStack {
            Spacer()
            Image(.predictBall)
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 350)
            
            Text(prediction)
                .font(.largeTitle)
                .frame(height: 120)
            Spacer()
            Button("Predict!") {
                prediction = "Awesomeness is on its way!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.indigo)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
