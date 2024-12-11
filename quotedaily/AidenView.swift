//
//  AidenView.swift
//  qoutedaily
//
//  Created by Aiden Baker on 12/5/24.
//

import SwiftUI

struct AidenView: View {
    // List of quotes
    let quotes = [
        "The best time to debug your code was 20 commits ago. The second best time is now.",
        "Your stack space is limited, so don’t waste it on infinite recursion.",
        "Success is not final; syntax errors are not fatal: It is the courage to keep coding that counts.",
        "Don’t watch the loading spinner; do what it does. Keep spinning.",
        "Whether you think you can `git push` or you think you can’t, you’re right."
    ]

    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
            // Title text at the top
            Text("Aiden's Quotes")
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
    AidenView()
}
