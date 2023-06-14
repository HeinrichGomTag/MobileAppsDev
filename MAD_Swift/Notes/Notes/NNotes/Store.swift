//
//  Store.swift
//  Notes
//
//  Created by iOS Lab on 16/05/23.
//

import Foundation

class NotesStore: ObservableObject, Identifiable    {
    @Published var notes = [Note]()
    let data = DataPersistence()
    
    func addNote(note: Note) {
        notes.append(note)
        saveNotes(notes: notes)
    }
    
    func updateNote(note: Note) {
        if let index = notes.firstIndex(where: {$0.id == note.id }){
            notes[index] = note
            saveNotes(notes: notes)
        }
    }
    
    func deleteNote(note: Note) {
        if let index = notes.firstIndex(where: {$0.id == note.id }){
            notes.remove(at: index)
            saveNotes(notes: notes)
        }
    }
    
    func loadNotes() {
        do {
            notes = try data.loadNotes()
        }
        catch{}
    }
    
    func saveNotes(notes: [Note]) {
        do {
            try data.saveNotes(notes)
        }
        catch{}
    }
    
}
