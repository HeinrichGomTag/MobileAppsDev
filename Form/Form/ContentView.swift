//
//  ContentView.swift
//  Form
//
//  Created by Enrique Gomez Tagle on 16/02/23.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    @State var name = ""
    @State var selected = "Hola2"
    var options = [
        "Hola1",
        "Hola2",
        "Hola3",
        "Hola4",
        "Hola5"
    ]
    
    var body: some View {
        Form{
            //            Button("Fui presionado \(count) veces", action: {count+=1})
            //            TextField("Give me your name", text: $name)
            //            Text("\(name)")
            //            ForEach(0..<100){
            //                number in Text("Row \(number)")
            //            ForEach(0..<100){
            //                Text("Row \($0)")
            ForEach(0..<2){
                Text("Row \($0)")
            }
            Picker("Some Text", selection: $selected){
                ForEach(options, id: \.self){
                    Text($0)
            }
//                Picker("Some Text", selection: $selected){
//                    Text("Hola1")
//                    Text("Hola2")
//                    Text("Hola3")
//                    Text("Hola4")
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
