//
//  Note.swift
//  Notes
//
//  Created by iOS Lab on 16/05/23.
//

import Foundation

class Note: ObservableObject,   Identifiable, Codable {
    let id: UUID
    var title: String
    var content: String
    
    init(id: UUID, title: String, content: String){
        self.title = title
        self.content = content
        self.id = id
    }
}
