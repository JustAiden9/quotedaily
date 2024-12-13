//
//  RohanView.swift
//  quotedaily
//
//  Created by Aiden Baker on 12/5/24.
//

import SwiftUI

struct RohanView: View {
    // List of quotes, so that when I pull it down in VStack it is able to pick a random one from the list.
    @State private var quotes = [
        "The Quickest Way To Double Your Money IS IT fold It Over And Put It Back In Your Pocket",
            "I have a love-hate relationship with semicolons. Mostly hate.",
            "If debugging is the art of removing bugs, then programming is the art of putting them in.",
            "I used to believe in unicorns, then I started chasing perfect code.",
            "Git me out of here! Said every dev after their first merge conflict.",
            "Writing code is easy. Explaining why it works is the real boss fight."
        ]
    // The let constant allows me to have a varible called Color to never be changed. This part allows me to have the button and the text the same color when using navigationview.
    let color: Color
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
            // Title text at the top
            Text("Rohan's Quotes")
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
    RohanView(color: .black)
}
