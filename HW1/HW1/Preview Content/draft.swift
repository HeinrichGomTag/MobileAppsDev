//
//  ContentView.swift
//  HW1
//
//  Created by Enrique Gomez Tagle on 28/02/23.
//

import SwiftUI

struct ContentView: View {
    @State private var slots = ["pencil", "eraser", "folder", "clipboard", "paperclip", "football", "trophy", "volleyball", "model", "cloud", "trash"]
    @State private var currentSlots = ["pencil", "eraser", "folder"]
    @State private var current = "pencil";
    
    @State private var showAlert = false;
    
    @State private var total = 0;
    
    
    var body: some View{
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Spacer()
                Text("Select \(current) from icons\n")
                    .foregroundColor(.white)
                    .font(.system(size: 28))
                
                Button(role:.cancel,
                       action: check1,
                       label: {
                    Image(systemName: currentSlots[0])
                        .imageScale(.large)
                })
                Text("\n")
                
                Button(role:.cancel,
                       action: check2,
                       label: {
                    Image(systemName: currentSlots[1])
                        .imageScale(.large)
                })
                Text("\n")
                
                Button(role:.cancel,
                       action: check3,
                       label: {
                    Image(systemName: currentSlots[2])
                        .imageScale(.large)
                })
                
                Spacer()
                Spacer()
            }
        }
        
        
        func check1(){
            if currentSlots[0] == current{
                total += 1
            }
        }
        
        func check2(){
            if currentSlots[1] == current{
                total += 1
            }
        }
        
        func check3(){
            if currentSlots[2] == current{
                total += 1
            }
        }
        
        func new_icons(){
            currentSlots = []
            
            for _ in 1...3 {
                currentSlots.append(slots.randomElement()!)
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

