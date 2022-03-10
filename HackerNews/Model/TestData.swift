//
//  TestData.swift
//  HackerNews
//
//  Created by Ali Mantaev on 2022-02-23.
//

import Foundation

struct TestData {
    static let story: Item = {
        let url = Bundle.main.url(forResource: "Story", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        let decoder = JSONDecoder()
        return try! decoder.decode(Item.self, from: data)
    }()
}
