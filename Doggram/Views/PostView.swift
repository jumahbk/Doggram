//
//  PostView.swift
//  Doggram
//
//  Created by Bander Jumah on 11/06/2023.
//

import SwiftUI

struct PostView: View {
    @State var post: PostModel
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            //MARK: HEADER
            HStack {
                Image("dog1").resizable().scaledToFit().frame(
                    width: 30, height: 30, alignment: .center).cornerRadius(15)
                
                Text("User name here")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                
                Spacer()
                Image(systemName: "ellipsis").font(.headline)
            }.padding(.all, 6)
            
            // MARK: IMAGE
            
            Image("dog1").resizable().scaledToFit()
            
            // MARK: FOOTER
            
            HStack(alignment: .center, spacing: 20)
            {
                Image(systemName: "heart")
                    .font(.title3)
                Image(systemName:"bubble.middle.bottom")
                    .font(.title3)
                Image(systemName:"paperplane")
                    .font(.title3)
                Spacer()
            }.padding(.all, 6)
            if let caption = post.caption {
                HStack {
                    Text(caption)
                    Spacer(minLength: 0)
                }.padding(.all, 6)
            }

        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var post: PostModel = PostModel(userID:"", postID: "", username: "BanderJumah", caption:"caption your self ", dateCreate: Date(), likeCount: 0, LikedByUser: false)
    static var previews: some View {
        PostView(post: post).previewLayout(.sizeThatFits)
    }
}
