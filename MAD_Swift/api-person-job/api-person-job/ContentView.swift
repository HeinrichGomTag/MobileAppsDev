//
//  ContentView.swift
//  api-person
//
//  Created by Enrique Gomez Tagle on 23/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var people: [Person] = []
    @State private var path = NavigationPath()
    @State private var Jobs: [Job] = Job.jobs
    
    var body: some View {
        NavigationStack(path: $path) {
            
            Section("People") {
                List(people) { person in
                    NavigationLink(person.name, value: person)
                }
                .navigationDestination(for: Person.self){
                    person in PersonView(user: person)
                }
                .onAppear(){
                    Api().getPerson{people in
                        self.people = people
                    }
                }
            }
            
            Section("Jobs") {
                List(Jobs) { job in
                    NavigationLink(job.title, value: job)
                }
                .navigationDestination(for: Job.self){
                    job in JobView(job: job)
                }
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
