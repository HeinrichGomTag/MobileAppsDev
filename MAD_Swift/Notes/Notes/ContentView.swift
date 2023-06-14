//
//  ContentView.swift
//  Notes
//
//  Created by iOS Lab on 16/05/23.
// |
import SwiftUI

struct ContentView: View {
    let notesStore = NotesStore()
    
    var body: some View {
        VStack {
            NotesListView()
                .environmentObject(notesStore)
        }.onAppear(){
            notesStore.loadNotes()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
