//
//  NetworkManager.swift
//  Heroes-App-with-SwiftUI
//
//  Created by muhammad.alfarisi on 28/04/23.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var heroes = [HeroData]()
    
    func fetchData() {
        if let url = URL(string: "https://my-json-server.typicode.com/fadhlialfarisi46/free-api-hero/pahlawan") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode([HeroData].self, from: safeData)
                            DispatchQueue.main.async {
                                self.heroes = results
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
