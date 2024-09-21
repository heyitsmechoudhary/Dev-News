//
//  WebView.swift
//  Dev News
//
//  Created by Rahul choudhary on 21/09/24.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()  // Explicitly returning WKWebView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let safeUrlString = urlString, let url = URL(string: safeUrlString) else {
            // If URL is not valid, print an error message or handle gracefully
            print("Invalid URL")
            return
        }
        
        DispatchQueue.main.async {  // Ensure the UI update happens on the main thread
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}
