//
//  ContentView.swift
//  spotifyclone
//
//  Created by Enrique Gomez Tagle on 15/06/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            ContentItemViewer()
                .font(.title)
                .tabItem{
                    VStack {
                        Image(systemName: "house")
                            .font(.largeTitle)
                        Text("Home")
                    }
                }
                .tag(0)
            
            Search()
                .font(.title)
                .tabItem{
                    VStack {
                        Image(systemName: "magnifyingglass")
                            .font(.largeTitle)
                        Text("Search")
                    }
                }
                .tag(0)
        }.toolbarBackground(.red, for: .tabBar)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
