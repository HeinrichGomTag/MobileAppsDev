//
//  spotifycloneApp.swift
//  spotifyclone
//
//  Created by Enrique Gomez Tagle on 15/06/23.
//

import SwiftUI

@main
struct spotifycloneApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
