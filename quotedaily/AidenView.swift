//
//  AidenView.swift
//  quotedaily
//
//  Created by Aiden Baker on 12/5/24.
//

import SwiftUI

struct AidenView: View {
    // List of quotes, so that when I pull it down in VStack it is able to pick a random one from the list.
    @State private var quotes = [
        "The best time to debug your code was 20 commits ago. The second best time is now.",
        "Your stack space is limited, so don't waste it on infinite recursion.",
        "Success is not final; syntax errors are not fatal: It is the courage to keep coding that counts.",
        "Don't watch the loading spinner; do what it does. Keep spinning.",
        "Whether you think you can `git push` or you think you can't, you're right."
    ]
    
    // The let constant allows me to have a varible called Color to never be changed. This part allows me to have the button and the text the same color when using navigationview.
    let color: Color
    
    // My VStack
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
            // Title text at the top
            Text("Aiden's Quotes")
                .font(.largeTitle)
                .foregroundColor(color)
                .fontWeight(.bold)
                .padding()

            Spacer()

            // Daily quote in the middle
            Text(quotes.randomElement() ?? "No") // If no quote is found "No" will be shown
                .font(.title)
                .foregroundColor(color)
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
    AidenView(color: .black) 
}
