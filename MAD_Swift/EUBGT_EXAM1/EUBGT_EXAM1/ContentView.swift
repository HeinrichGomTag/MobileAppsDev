//
//  ContentView.swift
//  EUBGT_EXAM1
//
//  Created by Enrique Gomez Tagle on 23/02/23.
//

import SwiftUI

struct ContentView: View {
    @State private var slots = ["bar", "bell", "cherry", "orange", "seven"]
    @State private var currentSlots = ["seven", "bell", "seven"]
    @State private var score = 0
    @State private var total = 0
    @State private var percentage = 0
    
    var body: some View {
        
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                Text("Welcome to the Slots Machine")
                    .foregroundColor(.white)
                    .font(.system(size: 28))
                Spacer()
                
                HStack{
                    Spacer()
                    Image(currentSlots[0])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                    
                    Spacer()
                    Image(currentSlots[1])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                    
                    Spacer()
                    Image(currentSlots[2])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                    Spacer()
                }
                
                Spacer()
                Button(action: alterSlots) {
                    Text("Roll")
                        .padding()
                }
                .background(Capsule().stroke(lineWidth: 2))
                Spacer()
                Text("Current Score: \(score)\n")
                    .foregroundColor(.white)
                    .font(.system(size: 28))
                
                Text("Total played: \(total)\n")
                    .foregroundColor(.white)
                    .font(.system(size: 28))
                
                Text("Win percentage: \(percentage)%\n")
                    .foregroundColor(.white)
                    .font(.system(size: 28))
            }
        }
    }
    
    func alterSlots() {
        total += 1
        currentSlots = []
        for _ in 1...3 {
            currentSlots.append(slots.randomElement()!)
        }
        if currentSlots[0] == currentSlots[1] && currentSlots[1] == currentSlots[2] {
            score += 1
        }
         percentage = (score * 100) / total
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
