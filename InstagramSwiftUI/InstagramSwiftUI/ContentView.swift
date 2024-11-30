//
//  ContentView.swift
//  InstagramSwiftUI
//
//  Created by Arturo Calvo on 30/11/24.
//

import SwiftUI
struct ContentView: View {
    let rows = [GridItem(.fixed(10))]
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: rows, alignment: .top) {
                            ForEach(0..<80) { _ in
                                StoryCardView()
                            }
                            .padding(.leading, 5)
                        }
                    }
                    .scrollIndicators(.hidden)
                    .frame(height: 80)
                }
                HomeTabBar()
            }
            .toolbar {
                HomeToolBar()
            }
        }
    }
}

#Preview {
    ContentView()
}
