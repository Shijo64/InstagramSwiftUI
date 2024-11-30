//
//  HomeTabBar.swift
//  InstagramSwiftUI
//
//  Created by Arturo Calvo on 30/11/24.
//
import SwiftUI

struct HomeTabBar: View {
    var body: some View {
        let posts:[Post] = [Post(), Post(), Post()]
        TabView {
            Tab("Home", systemImage: "house.fill") {
                ScrollView(.vertical) {
                    ForEach(posts) { post in
                        PostCardView(user: User(), post: post)
                    }
                }
                .scrollIndicators(.hidden)
                .refreshable {
                    print("Refreshing...")
                }
            }
            Tab("Search", systemImage: "magnifyingglass") {
                Text("Search")
            }
            Tab("Discover", systemImage: "plus.circle") {
                Text("Discover")
            }
            Tab("Reels", systemImage: "movieclapper") {
                Text("Reels")
            }
            Tab("Profile", systemImage: "person.crop.circle") {
                Text("Profile")
            }
        }
        .tint(.black)
    }
}

#Preview {
    HomeTabBar()
}
