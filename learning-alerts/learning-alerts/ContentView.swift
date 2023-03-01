//
//  ContentView.swift
//  learning-alerts
//
//  Created by Enrique Gomez Tagle on 28/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAlert = false;
    
    var body: some View {
        VStack {
//            Image(systemName: "suitcase")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
            Button("Mostrar Alerta", role:.cancel, action:{
                showAlert=true;
                print(showAlert)
            })
                .buttonStyle(.borderedProminent)
                .tint(.mint)
        }.alert("ALERT", isPresented: $showAlert, actions: {}, message: {Text("Alert")})
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
