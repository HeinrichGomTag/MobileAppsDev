//
//  address.swift
//  api-person
//
//  Created by Enrique Gomez Tagle on 28/03/23.
//

import Foundation
import SwiftUI


struct AddressView: View{
    let user: Person
    var body: some View{
        VStack(alignment: .leading, spacing: 10){

            VStack(alignment: .leading) {
             Text("Address")
                    .font(.title)
                    .fontWeight(.bold)
            }.padding()
            // ADD A DIVIDER
            Divider()
            HStack{
                Image(systemName: "location").resizable().frame(width: 20, height: 20)
                Text(user.address.street + ", " + user.address.suite)
            }
            HStack{
                Text("\(user.address.city), \(user.address.zipcode)")
            }

            HStack{
                Image(systemName: "globe").resizable().frame(width: 20, height: 20)
                Text("Latitude: \(user.address.geo.lat) Longitude: \n\(user.address.geo.lng)")
            }
            Spacer()
        }.padding()
        }
    }

