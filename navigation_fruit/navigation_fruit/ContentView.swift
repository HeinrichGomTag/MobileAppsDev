//
//  ContentView.swift
//  navigation_fruit
//
//  Created by Enrique Gomez Tagle on 23/03/23.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color("CustomColor")
}

struct ContentView: View {
    @State private  var path = NavigationPath()
        var body: some View {
            NavigationStack(path: $path){
                List{
                    Section("Fruits"){
                        ForEach(Fruit.example){ fruit in VStack(alignment: .leading){
                            NavigationLink(fruit.name, value: fruit)
//                            Text(fruit.name)
//                            Text(fruit.price.formatted())
                            }
                            
                        }
                    }
                    NavigationLink("Ex", value: "Example")
                }.navigationDestination(for: String.self){
                    string in ZStack {
                        Color.myCustomColor
                            .ignoresSafeArea()
                        VStack{
                            Text(string)
    
                            Button("Add to path"){
                                path.append("New view")
                            }
                            Button("Remove from path"){
                                path.removeLast()
                            }
                        }
                    }
    
                }.navigationDestination(for: Fruit.self){
                    fruit in ZStack{
                        fruit.color
                            .ignoresSafeArea()
                        HStack {
                            Image(fruit.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                            VStack(alignment:.leading){
                                Text("Nombre \(fruit.name)")
                                Text("Description: \(fruit.description)")
                                Text("Price: \(String(fruit.price))")
                            }.foregroundColor(.white)
                        }.padding()
                    }
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
