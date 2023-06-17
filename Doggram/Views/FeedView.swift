//
//  FeedView.swift
//  Doggram
//
//  Created by Bander Jumah on 11/06/2023.
//

import SwiftUI

struct FeedView: View {
    @ObservedObject var posts: PostArrayObject
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
//            PostView()
            LazyVStack{
                ForEach(posts.dataArray, id: \.self){
                    post in
                    PostView(post: post)
                }
            }


        })
        .navigationBarTitle("Feed View")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView(posts: PostArrayObject())
        }

    }
}
