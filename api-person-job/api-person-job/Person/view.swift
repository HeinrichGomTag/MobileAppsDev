//
//  view.swift
//  api-person
//
//  Created by Enrique Gomez Tagle on 28/03/23.
//

import Foundation
import SwiftUI

struct PersonView: View{
    
    let user:Person

    var body: some View{
        VStack (alignment: .leading){
            HStack{
                Text(user.name).font(.title).bold()
                Spacer()
                Image(systemName: "person.crop.circle").resizable().frame(width: 50, height: 50)
            }
            Text(user.username).bold()
            Text(user.company.name).foregroundColor(Color.gray)
            Divider()
            VStack(alignment: .leading, spacing: 10){
                HStack{
                    Image(systemName: "envelope")
                    Text(user.email)
                }
                HStack{
                    Image(systemName: "phone")
                    Text(user.phone)
                }
                HStack{
                    Image(systemName: "globe")
                    Text(user.website)
                }
            }
            
            NavigationLink(destination: AddressView(user: user))
            {
                Text("View Addres")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }

        }.padding(10)
        }
}
