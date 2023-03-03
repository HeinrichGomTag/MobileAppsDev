//
//  ContentView.swift
//  HW1
//
//  Created by Enrique Gomez Tagle on 28/02/23.
//

import SwiftUI

struct ContentView: View {
    @State private var slots = ["pencil", "eraser", "folder", "paperplane", "clipboard", "paperclip", "football", "trophy", "volleyball", "medal", "cloud", "trash"]
    @State private var currentSlots = ["pencil", "eraser", "folder"]
    
    @State private var current = "pencil";
    
    @State private var score = 0
    
    @State private var showAlert = false;
    @State private var message = "Incorrecto"
    
    
    var body: some View {
        
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            
            VStack {
                Text("Select \(current) from icons\n")
                    .foregroundColor(.white)
                    .font(.system(size: 28))
                
                
                Button(
                    role:.cancel,
                    action: check1,
                    label: {
                        Image(systemName: currentSlots[0])
                            .imageScale(.large)
                        }
                )
                    Text("\n")
                    
                    Button(
                        role:.cancel,
                        action: check2,
                        label: {
                            Image(systemName: currentSlots[1])
                                .imageScale(.large)
                        }
                    )
                    Text("\n")
                    
                    Button(
                        role:.cancel,
                        action: check3,
                        label: {
                            Image(systemName: currentSlots[2])
                                .imageScale(.large)
                        }
                    )
                    Text("\n")
                
                    Text("SCORE => \(score)\n")
                        .foregroundColor(.white)
                        .font(.system(size: 28))
                }
        }.alert(message, isPresented: $showAlert, actions:{Button("Entiendo", role: .cancel){new_icons()}}, message:{Text("Score: \(score)")}
        )
    }
    
    func check1(){
        showAlert = true;
        if current ==  currentSlots[0]{
            score += 1
            message = "Correcto"
        } 
        else{
            score -= 1
            if score < 0{
                score = 0
            }
        }
        new_icons()
    }

    func check2(){
        showAlert = true;
        if current ==  currentSlots[1]{
            score += 1
            message = "Correcto"
        }
        else{
            score -= 1
            if score < 0{
                score = 0
            }
        }
        new_icons()
    }

    func check3(){
        showAlert = true;
        if current ==  currentSlots[2]{
            score += 1
            message = "Correcto"
        }
        else{
            score -= 1
            if score < 0{
                score = 0
            }
        }
        new_icons()
    }
    
    func new_icons() {
        currentSlots = []
        for _ in 1...3 {
            currentSlots.append(slots.randomElement()!)
        }
        for _ in currentSlots {
            if currentSlots[0] == currentSlots[1] {
                currentSlots[1] = slots.randomElement()!
            }
            if currentSlots[1] == currentSlots[2] {
                currentSlots[2] = slots.randomElement()!
            }
            if currentSlots[0] == currentSlots[2] {
                currentSlots[2] = slots.randomElement()!
            }
        }

        current = currentSlots.randomElement()!
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
