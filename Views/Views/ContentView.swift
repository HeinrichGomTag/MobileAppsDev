//
//  ContentView.swift
//  Views
//
//  Created by Enrique Gómez Tagle on 09/03/23.
//

import SwiftUI

struct CapsuleText : View{
    var text : String
    
    var body: some View{
        VStack{
            Text(text)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Capsule())
        }
    }
}

struct Title:ViewModifier{
    func body(content: Content) -> some View {
        content
    }
}

struct ContentView: View {
    
    @State private var useRedText = true
    var simpleText = Text("Texto sencillo")
    
    
    
    var body: some View {
        VStack {
            CapsuleText(text: "Hello World!")
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
