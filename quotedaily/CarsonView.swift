//
//  CarsonView.swift
//  quotedaily
//
//  Created by Aiden Baker on 12/5/24.
//

import SwiftUI

struct CarsonView: View {
    // List of quotes, so that when I pull it down in VStack it is able to pick a random one from the list.
    @State private var quotes = [
        "Coding is 90% Googling and 10% pretending you knew it all along.",
        "Why write clean code when you can write code that keeps future devs employed?",
        "Debugging: The process of removing bugs, aka finding out why your fixes made it worse.",
        "They said it worked on their machine. So I stole their machine.",
        "My code doesn’t always work, but when it does, I have no idea why."
    ]
    // The let constant allows me to have a varible called Color to never be changed. This part allows me to have the button and the text the same color when using navigationview.
    let color: Color
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
            // Title text at the top
            Text("Carsons's Quotes")
                .font(.largeTitle)
                .foregroundColor(color)
                .fontWeight(.bold)
                .padding()
            
            Spacer()
            
            // Daily quote in the middle
            Text(quotes.randomElement() ?? "No")
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
    CarsonView(color: .black) 
}
