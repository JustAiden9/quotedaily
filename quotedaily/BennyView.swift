//
//  BennyView.swift
//  quotedaily
//
//  Created by Aiden Baker on 12/5/24.
//

import SwiftUI

struct BennyView: View {
    // List of quotes, so that when I pull it down in VStack it is able to pick a random one from the list.
    @State private var quotes = [
        "I don’t write bugs, I create unexpected features.",
        "Keyboard not found. Press F to pay respects.",
        "Programming is like magic, except the compiler is your angry spell checker.",
        "I named my codebase Titanic because it looked unsinkable at first.",
        "Commit messages are just diary entries for code therapists."
    ]
    // The let constant allows me to have a varible called Color to never be changed. This part allows me to have the button and the text the same color when using navigationview.
    let color: Color
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
            // Title text at the top
            Text("Benny's Quotes")
                .font(.largeTitle)
                .foregroundColor(color)
                .fontWeight(.bold)
                .padding()

            Spacer()

            // Daily quote in the middle
            Text(quotes.randomElement() ?? "No")
                .font(.title)
                .foregroundColor(color) // Pulling from the let variable and that let is pulling from the content view file
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
    BennyView(color: .black)
}
