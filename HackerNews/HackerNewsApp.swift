//
//  HackerNewsApp.swift
//  HackerNews
//
//  Created by Ali Mantaev on 2022-02-22.
//

import SwiftUI

@main
struct HackerNewsApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                NewsView()
            }
        }
    }
}
