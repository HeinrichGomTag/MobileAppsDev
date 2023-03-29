//
//  view2.swift
//  api-person-job
//
//  Created by Enrique Gomez Tagle on 28/03/23.
//

import Foundation
import SwiftUI

struct JobView: View{
    
    let job:Job
    // ADD A NAVIGATION BAR
    var body: some View{
         VStack(alignment: .leading, spacing: 10){
            VStack(alignment: .leading) {
             Text(job.title)
                    .font(.title)
            }.padding()
            HStack( spacing: 10){
                // ADD COMPANY NAME
                Text(job.company)
                    .font(.title2)
                    .foregroundColor(.gray)
            }
            // SHOW REQUIREMENTS
            Text("Requirements:")
                .font(.title2)
                .foregroundColor(.black)
             ForEach(job.requirements, id: \.self) { requirement in
                Text("•\(requirement)")
             }
            // SHOW SALARY
            Text("Salary:")
                .font(.title2)
                .foregroundColor(.black)
             Text(job.salary.formatted())
                .font(.title3)
                .foregroundColor(.black)
            Spacer()
        }
    }
}
