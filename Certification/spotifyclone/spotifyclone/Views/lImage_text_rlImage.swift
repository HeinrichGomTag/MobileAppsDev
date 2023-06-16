//
//  lImage_text_rlImage.swift
//  spotifyclone
//
//  Created by Enrique Gomez Tagle on 15/06/23.
//

import SwiftUI

struct lImage_text_rlImage: View {
    var body: some View {
        HStack{
            Image(systemName: "timelapse").padding(.trailing, 10)
            Text("Song Title")
            Spacer()
            Image(systemName: "ellipsis")
        }
        .padding(15)
        .background(Color.black)
        .foregroundColor(.white)
    }
}

struct lImage_text_rlImage_Previews: PreviewProvider {
    static var previews: some View {
        lImage_text_rlImage()
    }
}
