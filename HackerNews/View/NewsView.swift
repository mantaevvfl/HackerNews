//
//  NewsView.swift
//  HackerNews
//
//  Created by Ali Mantaev on 2022-02-23.
//

import SwiftUI

struct NewsView: View {
    @StateObject private var viewModel = NewsViewModel()

    var body: some View {
        List(viewModel.stories.indices) { index in
            if let story = viewModel.stories[index] {
                Story(position: index + 1, item: story)
            }
        }
        .navigationTitle("News")
        .onAppear(perform: viewModel.fetchTopStories)
    }
}



struct Badge: View {
    let text: String
    let imageName: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
            Text(text)
        }
    }
}

struct Position: View {
    let position: Int
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 32.0, height: 32.0)
                .foregroundColor(Color(UIColor.systemTeal))
            Text("\(position)")
                .font(Font.callout)
                .foregroundColor(Color.white)
                .bold()
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {           
            Group {
                Story(position: 1, item: TestData.story)
                Badge(text: "1.234", imageName: "paperplane")
                Position(position: 1)
            }
            .previewLayout(.sizeThatFits)
        }
    }
}
