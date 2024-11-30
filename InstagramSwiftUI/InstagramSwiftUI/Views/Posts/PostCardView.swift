//
//  PostCardView.swift
//  InstagramSwiftUI
//
//  Created by Arturo Calvo on 30/11/24.
//
import SwiftUI

struct PostCardView: View {
    let user : User
    let post : Post
    var body: some View {
        VStack {
            HStack  {
                StoryCardView()
                    .scaleEffect(0.5)
                
                Text(user.name)
                    .font(.headline)
                Spacer()
                Button("", systemImage: "ellipsis") {
                    print("more")
                }
                .tint(.black)
            }
            
            Image(post.image)
                .resizable()
                .frame(width: .infinity, height: 500)
                .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .firstTextBaseline) {
                Button("", systemImage: "heart") {
                    print("like")
                }
                .tint(.black)
                
                Button("", systemImage: "message") {
                    print("message")
                }
                .tint(.black)
                Button("", systemImage: "paperplane") {
                    print("share")
                }
                .tint(.black)
                
                Spacer()
                
                Button("", systemImage: "bookmark") {
                    print("bookmark")
                }
                .tint(.black)
            }
            .padding()
            
            HStack {
                Text(user.name)
                    .fontWeight(.bold)
                Text("El perrito tiene la lengua de fuera")
            }
            
            HStack {
                Text("hace \(post.postTime)")
                    .padding()
                Spacer()
                Button("Translate") {
                    print("Translate")
                }
                .tint(.black)
                .padding()
            }
        }
    }
}

#Preview {
    PostCardView(user: User(), post: Post())
}
