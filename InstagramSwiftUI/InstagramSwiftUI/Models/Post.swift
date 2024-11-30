//
//  Post.swift
//  InstagramSwiftUI
//
//  Created by Arturo Calvo on 30/11/24.
//

import Foundation

struct Post: Identifiable {
    var id = UUID()
    var user = User()
    var image = "post"
    var postTime = "48 min."
    var likes = 40
    var comments = 1
}
