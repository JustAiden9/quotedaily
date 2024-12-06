//
//  ContentView.swift
//  qoutedaily
//
//  Created by Aiden Baker on 12/5/24.
//

import SwiftUI

struct ContentView: View {
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
                    NavigationLink(destination: CarsonView()) {
                        CustomButton(title: "Carson", color: .blue)
                    }
                    
                    NavigationLink(destination: RohanView()) {
                        CustomButton(title: "Rohan", color: .green)
                    }
                    
                    NavigationLink(destination: BennyView()) {
                        CustomButton(title: "Benny", color: .red)
                    }
                    
                    NavigationLink(destination: AidenView()) {
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

// Reusable Button Component
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
