//
//  ContentView.swift
//  FirstTermExam
//
//  Created by Enrique Gomez Tagle on 23/02/23.
//

// Crear y desarrollar una sencilla aplicación la cual va a consistir de la creación de una
// “máquina tragamonedas”. La aplicación deberá mostrar tres imágenes aleatorias de las
// cinco proporcionadas en los recursos adjuntos cada vez que se presione el botón" , a la vez
// la aplicación deberá contar cada cuanto se tiene un match en las 3 imágenes.

// El snippet para el botón utilizado es el siguiente. Con alterSlots siendo la función que se va
// a correr cuando el botón sea presionado.

// Button(action: alterSlots) {
// Text("Roll")
// .padding()
// }
// .background(Capsule().stroke(lineWidth: 2))

// Especificaciones:
// La aplicación debe de contar con un fondo verde
// Debe contar con el siguiente texto “Welcome to the Slots Machine”
// Este texto debe ser color blanco y con un fontSize de 28
// Las imágenes deberán tener un tamaño de 100x100.

// Debe haber un espacio simétrico entre los siguientes elementos:
// La parte superior de la pantalla
// El texto “Welcome to the Slots Machine”
// Las 3 imágenes
// El botón
// El texto del contador

// La aplicación tendrá un contador el cual va a aumentar en 1 cada que salgan 3
// imágenes iguales.
// El contador deberá decir “Current Score: {score_actual}”


import SwiftUI

struct ContentView: View {
    @State private var slots = ["bar", "bell", "cherry", "orange", "seven"]
    @State private var currentSlots = [String]()
    @State private var score = 0
    
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
                HStack {
                    Spacer()
                    Image(currentSlots[0])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                    Image(currentSlots[1])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
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
                Text("Current Score: \(score)")
                    .foregroundColor(.white)
                    .font(.system(size: 28))
                Spacer()
            }
        }
    }
    
    func alterSlots() {
        currentSlots = []
        for _ in 1...3 {
            currentSlots.append(slots.randomElement()!)
        }
        if currentSlots[0] == currentSlots[1] && currentSlots[1] == currentSlots[2] {
            score += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
