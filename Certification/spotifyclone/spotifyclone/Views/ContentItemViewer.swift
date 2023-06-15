//
//  ContentItemViewer.swift
//  spotifyclone
//
//  Created by Enrique Gomez Tagle on 15/06/23.
//

import SwiftUI

struct ContentItemViewer: View {
    var topSpacer_height: CGFloat = 400
    
    var body: some View {
        ZStack {
            // LAYER 0
            LinearGradient(gradient: Gradient(colors: [Color.init(red: 61/255, green: 89/255, blue: 115/255), Color.black.opacity(0.94), Color.black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            // LAYER 1, ALBUM DETAILS
            VStack {
                Spacer()
                    .frame(height: 50)
                
                Image("cover")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Text("Quédate (Tiësto Remix)")
                    .foregroundColor(Color.white)
                    .font(.system(size: 20, weight: .bold))
                
                Text("Bizarrap + 1")
                    .foregroundColor(.init(red: 0.5, green: 0.5, blue: 0.5))
                    .font(.system(size: 16, weight: .medium))
                    .padding(.top, 1)
                    .frame(alignment: .trailing)
                
                Text("Sencillo • 2022")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.init(red: 0.5, green: 0.5, blue: 0.5))
                    .font(.system(size: 16))
                    .padding(.top, 1)
                
                Spacer()
            }
            
            // LAYER 2, ITEM LIST
            ScrollView {
                VStack(spacing: 0) {
                    HStack {
                        Spacer()
                            .frame(height: topSpacer_height)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.clear, Color.clear, Color.clear, Color.black]), startPoint: .top, endPoint: .bottom))
                    }
                    VStack {
                        ForEach(0..<10){ element in
                            HStack{
                                lImage_text_rlImage()
                                Spacer()
                            }
                        }
                    }.background(Color.black)
                }.background(Color.clear)
            }
            
            // LAYER 3
            Text("Play")
                .foregroundColor(.white)
                .background(Color.init(red: 30/255, green: 215/255, blue: 96/255))
                .frame(width: 2)
        }
    }
}

struct ContentItemViewer_Previews: PreviewProvider {
    static var previews: some View {
        ContentItemViewer()
    }
}
