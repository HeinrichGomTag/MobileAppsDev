//
//  model.swift
//  api-person
//
//  Created by Enrique Gomez Tagle on 23/03/23.
//

import Foundation

struct Person: Codable, Identifiable, Hashable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
    let phone: String
    let website: String
    let company: Company
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.id == rhs.id
    }
}

struct Address: Codable {
    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geo: Geo
}

struct Geo: Codable {
    let lat: String
    let lng: String
}

struct Company: Codable {
    let name: String
    let catchPhrase: String
    let bs: String
}
