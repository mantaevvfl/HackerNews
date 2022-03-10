//
//  Item.swift
//  HackerNews
//
//  Created by Ali Mantaev on 2022-02-22.
//

import Foundation

struct Item: Identifiable {
    let id: Int
    let commentCount: Int
    let score: Int
    let author: String
    let title: String
    let date: Date
    let url: URL?
}

extension Item: Decodable {
    enum CodingKeys: String, CodingKey {
        case id, score, title, url
        case author  = "by"
        case commentCount = "descendants"
        case date = "time"
    }
}
