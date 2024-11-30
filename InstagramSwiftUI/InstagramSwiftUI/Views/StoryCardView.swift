//
//  StoryCardView.swift
//  InstagramSwiftUI
//
//  Created by Arturo Calvo on 30/11/24.
//
import SwiftUI

struct StoryCardView : View {
    
    var body: some View {
        ZStack(alignment: .center) {
            Circle()
                .fill(LinearGradient(colors: [.red, .yellow, .orange, .purple], startPoint: .bottomLeading, endPoint: .topTrailing))
                .frame(width: 80, height: 80)
                
            Image("profile_image")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .frame(width: 68, height: 68)
        }
    }
}

#Preview {
    StoryCardView()
}
