//
//  ContentView.swift
//  ExamRehearsal
//
//  Created by Enrique Gomez Tagle on 21/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack(spacing:0){
                Color.red
                Color.blue
                //            Color(red: 1, green: 0.8, blue: 0)
                //                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
                //            VStack(alignment: .leading,
                //                   // TRAILING --- ALIGNMENT RIGHT OR LEFT
                //                   content: {
                //                Text("5FD5")
                //                Text("5FD5asdafds")
                //            }
                //            )
            }.ignoresSafeArea()
            Text("Hello")
                .foregroundColor(.primary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
