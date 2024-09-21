//
//  PostData.swift
//  Dev News
//
//  Created by Rahul choudhary on 18/09/24.
//

import Foundation

struct Results : Decodable {
    let hits: [Post]
}

struct Post : Decodable, Identifiable {
    var id: String { return objectID }
    let objectID : String
    let points : Int
    let title : String
    let url : String?
}
