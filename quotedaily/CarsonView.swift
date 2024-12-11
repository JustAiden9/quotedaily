//
//  CarsonView.swift
//  qoutedaily
//
//  Created by Aiden Baker on 12/5/24.
//

import SwiftUI

struct CarsonView: View {
    // List of quotes
    let quotes = [
        "Coding is 90% Googling and 10% pretending you knew it all along.",
        "Why write clean code when you can write code that keeps future devs employed?",
        "Debugging: The process of removing bugs, aka finding out why your fixes made it worse.",
        "They said it worked on their machine. So I stole their machine.",
        "My code doesn’t always work, but when it does, I have no idea why."
    ]

    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
            // Title text at the top
            Text("Carsons's Quotes")
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
    CarsonView()
}
