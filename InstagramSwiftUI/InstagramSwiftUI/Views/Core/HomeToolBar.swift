//
//  HomeToolBar.swift
//  InstagramSwiftUI
//
//  Created by Arturo Calvo on 30/11/24.
//
import SwiftUI

struct HomeToolBar: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button("Swiftagram") {
                print("Swiftagram")
            }
            .tint(.black)
            .font(.largeTitle)
        }
        
        ToolbarItem(placement: .topBarTrailing) {
            Button("notifications", systemImage: "app.badge") {
                print("Notifications")
            }
            .tint(.black)
        }
        
        ToolbarItem(placement: .topBarTrailing) {
            Button("chat", systemImage: "message") {
                print("Chat")
            }
            .tint(.black)
        }
    }
}
