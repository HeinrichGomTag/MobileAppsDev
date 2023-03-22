//
//  ContentView.swift
//  navigation-fruit1
//
//  Created by Enrique Gomez Tagle on 21/03/23.
//

import SwiftUI

extension Color{
    static let myCustomColor = Color("Color")
}

struct ContentView: View {
    @State private var path = NavigationPath()
    var body: some View {
        NavigationStack(path: $path){
            List{
//                NavigationLink("Example",value:
//                                "Example Test")
//                NavigationLink("Example",value:
//                                "Example Test 2")
                Section("Fruits"){
                    ForEach(Fruit.example){fruit in
                        VStack(alignment: .leading){
                            NavigationLink(fruit.name, value:
                                            fruit)
                        }
                    }
                }
            }
            .navigationDestination(for: String.self) {
                string in ZStack{
                    Color.myCustomColor.ignoresSafeArea()
                    VStack{
                        Text(string)
                        Button("Add to path")
                        {
                            path.append("New View")
                        }
                        Button("Remove from path")
                        {
                            path.removeLast()
                        }
                    }
                }
            }
            .navigationDestination(for: Fruit.self){
                fruit in Text(fruit.name)}
        }
            }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
