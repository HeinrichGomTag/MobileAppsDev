//
//  NotesListView.swift
//  Notes
//
//  Created by iOS Lab on 16/05/23.
//

import SwiftUI

struct NotesListView: View {
    @EnvironmentObject var notesStore: NotesStore
    @State var selectedNote: Note?
    
    private var addButton: some View{
        Button(action:{
            notesStore.addNote(note: Note(id: UUID(), title:"New Note", content: ""))
        }, label: {
            Image(systemName: "plus")
        })
    }
    private var mockDetails: some View {
        Text("a")
    }
    var body: some View {
        NavigationView{
            List{
                ForEach(notesStore.notes){
                    note in
                    VStack(alignment: .leading){
                        Text(note.title)
                            .font(.headline)
                        Text(note.content)
                            .font(.subheadline)
                    }.onTapGesture {
                        selectedNote = note
                    }
                }
            }
            .navigationTitle("Notes")
            .navigationBarItems(trailing: addButton)
            .sheet(item: $selectedNote){
                note in mockDetails
            }
        }
    }
}
struct NotesListView_Previews: PreviewProvider {
    static var previews: some View {
        let notesStore = NotesStore()
        NotesListView()
            .environmentObject(notesStore)
    }
}
