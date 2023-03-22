//
//  Fruit.swift
//  navigation-fruit1
//
//  Created by Enrique Gomez Tagle on 21/03/23.
//

import Foundation
import SwiftUI

struct Fruit: Identifiable, Hashable{
    let id = UUID()
    let name: String
    let price: Double
    let color: Color
    var image: String
    var description: String
    var isOrganic: Bool
}

extension Fruit {

    static let example: [Fruit] = [

        .init(name: "Apple", price: 0.99, color: Color("StrawberryRed"), image: "moneda", description: "A crisp and juicy fruit that's great for snacking.", isOrganic: true),

        .init(name: "Banana", price: 0.49, color: Color("StrawberryRed"), image: "moneda", description: "A juicy and tangy citrus fruit that's high in Vitamin C.", isOrganic: true),

        .init(name: "Orange", price: 0.79, color: Color("StrawberryRed"), image: "moneda", description: "A juicy and tangy citrus fruit that's high in Vitamin C.", isOrganic: true),

        .init(name: "Grapes", price: 20.0, color: Color("StrawberryRed"), image: "moneda", description: "A sweet and juicy fruit that's perfect for snacking and sharing.", isOrganic: false),

        .init(name: "Strawberry", price: 2.99, color: Color("StrawberryRed"), image: "moneda", description: "A delicious and healthy berry that's great for desserts and smoothies.", isOrganic: true)
    ]

}

