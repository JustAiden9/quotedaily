//
//  ContentView.swift
//  quotedaily
//
//  Created by Aiden Baker on 12/5/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedColor: Color = .white
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                // App title
                Text("Welcome to QuoteDaily")
                    .font(.title)
                    .bold()
                    .padding(.bottom, 40)
                
                // App description text
                Text("QuoteDaily delivers inspirational quotes from the best coders at BHS!")
                    .font(.body)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                
                // Buttons
                VStack(spacing: 20) {
                    NavigationLink(destination: CarsonView(color: .blue)) { // color: .blue corosponds to the text color in CarsonView
                        CustomButton(title: "Carson", color: .blue) // color for the button! ALL THE SAME FOR BELOW!
                    }
                    
                    NavigationLink(destination: RohanView(color: .green)) {
                        CustomButton(title: "Rohan", color: .green)
                    }
                    
                    NavigationLink(destination: BennyView(color: .red)) {
                        CustomButton(title: "Benny", color: .red)
                    }
                    
                    NavigationLink(destination: AidenView(color: .purple)) {
                        CustomButton(title: "Aiden", color: .purple)
                    }
                }
                
                Spacer()
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .padding()
            .preferredColorScheme(.dark)
        }
    }
}

// Reusable Button struct
struct CustomButton: View {
    let title: String
    let color: Color
    var body: some View {
        Text(title)
            .fontWeight(.bold)
            .frame(width: 150, height: 40, alignment: .center)
            .padding()
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(25)
    }
}


#Preview {
    ContentView()
}
