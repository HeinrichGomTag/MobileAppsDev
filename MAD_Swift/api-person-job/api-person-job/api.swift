//
//  api.swift
//  api-person
//
//  Created by Enrique Gomez Tagle on 23/03/23.
//

import Foundation

class Api{
    func getPerson(completion: @escaping ([Person]) -> ()){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {return}
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let people = try! JSONDecoder().decode([Person].self, from: data!)
            DispatchQueue.main.async {
                completion(people)
            }
        }.resume()
    }
}
