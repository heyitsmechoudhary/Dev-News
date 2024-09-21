//
//  DetailView.swift
//  Dev News
//
//  Created by Rahul choudhary on 20/09/24.
//
import SwiftUI


struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
            .navigationTitle("Detail View") // Adding navigation title (if applicable)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}


