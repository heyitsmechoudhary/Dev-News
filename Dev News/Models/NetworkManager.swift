//
//  NetworkManager.swift
//  Dev News
//
//  Created by Rahul choudhary on 18/09/24.
//

import Foundation


class NetworkManager : ObservableObject{
    @Published var posts = [Post]()

    func fetchNews(){
        let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page")!
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            if error == nil {
                let decoder = JSONDecoder()
                if let safeData = data{
                    do {
                        let news = try decoder.decode(Results.self, from: safeData)
                        DispatchQueue.main.async {
                            self.posts = news.hits
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
