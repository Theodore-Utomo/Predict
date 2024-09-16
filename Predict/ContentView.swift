//
//  ContentView.swift
//  Predict
//
//  Created by Theodore Utomo on 9/16/24.
//

import SwiftUI

struct ContentView: View {
    @State private var prediction = ""
    private let choicesArray = ["It is certain",
                        "It is decidedly so",
                        "Without a doubt",
                        "Yes, definitely",
                        "You may rely on it",
                        "As I see it, yes",
                        "Most likely",
                        "Outlook good",
                        "Yes",
                        "Signs point to yes",
                        "Reply hazy try again",
                        "Ask again later",
                        "Better not tell you now",
                        "Cannot predict now",
                        "Concentrate and ask again",
                        "Don't count on it",
                        "My reply is no",
                        "My sources say no",
                        "Outlook not so good",
                        "Very doubtful"]
    
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
                .animation(.easeInOut, value: prediction)
                .multilineTextAlignment(.center)
            Spacer()
            Button("Predict!") {
                prediction = choicesArray.randomElement() ?? "I cannot predict right now"
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
