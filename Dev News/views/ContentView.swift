//
//  ContentView.swift
//  Dev News
//
//  Created by Rahul choudhary on 18/09/24.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var newtworkManager = NetworkManager()
    var body: some View {
        VStack {
            NavigationView{
                List(newtworkManager.posts){post in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                    
                }
                .navigationTitle("Dev News")
            }
            .onAppear {
                self.newtworkManager.fetchNews()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
