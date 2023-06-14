//
//  DataPersistance.swift
//  todolist
//
//  Created by Luis Esteban Haro on 26/04/23.
//
import Foundation

class DataPersistence {

    private let fileManager = FileManager.default
    private let documentsDirectory: URL
    private let notesURL: URL

    init() {
        self.documentsDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first!
        self.notesURL = documentsDirectory.appendingPathComponent("items").appendingPathExtension("json")
    }


    func saveNotes(_ notes: [Note]) throws {
        let encoder = JSONEncoder()
        let notesItems = try encoder.encode(notes)
        try notesItems.write(to: notesURL)
    }

    func loadNotes() throws -> [Note] {
        guard fileManager.fileExists(atPath: notesURL.path) else {
            return []
        }

        let decoder = JSONDecoder()
        let data = try Data(contentsOf: notesURL)
        let decodedNotes = try decoder.decode([Note].self, from: data)
        return decodedNotes
    }

    func appendNotes(_ note: Note) throws {
        let encoder = JSONEncoder()
        let existingData: Data
        if fileManager.fileExists(atPath: notesURL.path) {
            existingData = try Data(contentsOf: notesURL)
        } else {
            existingData = Data()
        }
        let encodedItem = try encoder.encode(note)
        let combinedData = existingData + encodedItem
        try combinedData.write(to: notesURL)
    }

    func deleteNoteByTitle(_ id: UUID) throws {
        var notes = try loadNotes()
        notes.removeAll { $0.id == id }
        try saveNotes(notes)
    }
}
