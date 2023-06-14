//
//  NotesDetail.swift
//  Notes
//
//  Created by iOS Lab on 16/05/23.
//

import SwiftUI

struct NotesDetail: View {
    
    @ObservedObject var note: Note
    @EnvironmentObject var notesStore: NotesStore
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Text("Cerrar")
        })
        TextField("Title", text: $note.title)
    }
}

//struct NotesDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        NotesDetail()
//    }
//}
