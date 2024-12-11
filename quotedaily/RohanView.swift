//
//  RohanView.swift
//  qoutedaily
//
//  Created by Aiden Baker on 12/5/24.
//

import SwiftUI

struct RohanView: View {
    // List of quotes
    let quotes = [
        "The Quickest Way To Double Your Money IS IT fold It Over And Put It Back In Your Pocket",
            "I have a love-hate relationship with semicolons. Mostly hate.",
            "If debugging is the art of removing bugs, then programming is the art of putting them in.",
            "I used to believe in unicorns, then I started chasing perfect code.",
            "Git me out of here! Said every dev after their first merge conflict.",
            "Writing code is easy. Explaining why it works is the real boss fight."
        ]

    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
            // Title text at the top
            Text("Rohan's Quotes")
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
    RohanView()
}
