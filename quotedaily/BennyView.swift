//
//  BennyView.swift
//  qoutedaily
//
//  Created by Aiden Baker on 12/5/24.
//

import SwiftUI

struct BennyView: View {
    // List of quotes
    let quotes = [
        "I don’t write bugs, I create unexpected features.",
        "Keyboard not found. Press F to pay respects.",
        "Programming is like magic, except the compiler is your angry spell checker.",
        "I named my codebase Titanic because it looked unsinkable at first.",
        "Commit messages are just diary entries for code therapists."
    ]

    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
            // Title text at the top
            Text("Benny's Quotes")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            Spacer()

            // Daily quote in the middle
            Text(quotes.randomElement() ?? "No")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()

            Spacer()

            // Text at the bottom
            Text("Yes, the quotes do change daily!")
                .font(.footnote)
                .foregroundColor(.gray)
                .padding()
        }
    }
}

#Preview {
    BennyView()
}
