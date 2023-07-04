//
//  ImageGridView.swift
//  Doggram
//
//  Created by Bander Jumah on 07/12/1444 AH.
//

import SwiftUI

struct ImageGridView: View {
    @ObservedObject var posts : PostArrayObject
    var body: some View {
        LazyVGrid(
            columns: [
                GridItem(.flexible()),
                GridItem(.flexible()),

                GridItem(.flexible()),

            
            ],
            alignment: .center,
            spacing: nil,
            pinnedViews: [],
            content: {
                NavigationLink(destination:
                                
                                var postojb : PostArrayObject =
                                FeedView(posts: <#T##PostArrayObject#>)
                
                
                ) {
                    
                    
                    ForEach(posts.dataArray,id:\.self, content: { post in
                        PostView(post: post)

                    })
                }

            })
    }
}

struct ImageGridView_Previews: PreviewProvider {
    static var previews: some View {
        
        ImageGridView(posts: PostArrayObject()).previewLayout(.sizeThatFits)
    }
}
