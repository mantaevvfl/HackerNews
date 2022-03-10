//
//  Story.swift
//  HackerNews
//
//  Created by Ali Mantaev on 2022-02-24.
//

import SwiftUI

struct Story: View {
    let position: Int
    let title: String
    let footnote: String
    let commentCount: String
    let score: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 16.0) {
            Position(position: position)
            VStack(alignment: .leading, spacing: 8.0) {
                Text(title)
                    .font(.headline)
                Text(footnote)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                    Badge(text: score, imageName: "arrowtriangle.up.circle")
                        .foregroundColor(Color(UIColor.systemTeal))
                    Badge(text: commentCount, imageName: "ellipses.bubble")
                        .padding(.leading, 96)
                        .foregroundColor(Color.orange)
                }
                .font(.callout)
                .padding(.bottom)
            }
        }
        .padding(.top, 16.0)
    }
}

extension Story {
    init(position: Int, item: Item) {
        self.position = position
        self.title = item.title
        self.commentCount = item.commentCount.formatted
        self.score = item.score.formatted
        if let url = item.url {
            self.footnote = url.formatted + " - \(item.date.timeAgo)" + " - by \(item.author)"
        } else {
            self.footnote = "\(item.date.timeAgo)" + " - by \(item.author)"
        }
    }
}

struct Story_Previews: PreviewProvider {
    static var previews: some View {
        Story(position: 1, item: TestData.story)
    }
}
