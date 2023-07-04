//
//  PostArrayObject.swift
//  Doggram
//
//  Created by Bander Jumah on 13/06/2023.
//

import Foundation


class PostArrayObject: ObservableObject{
    
    @Published var dataArray = [PostModel]()
    
    init(){
        
        
        let post1 = PostModel(userID:"", postID: "", username: "BanderJumah", caption:"caption your self ", dateCreate: Date(), likeCount: 0, LikedByUser: false)
        let post2 = PostModel(userID:"", postID: "", username: "fahd", caption:"fahd your self ", dateCreate: Date(), likeCount: 0, LikedByUser: false)
        let post3 = PostModel(userID:"", postID: "", username: "sara", caption:"caption fahd self ", dateCreate: Date(), likeCount: 0, LikedByUser: false)
        let post4 = PostModel(userID:"", postID: "", username: "nourah", caption:"caption fahd self ", dateCreate: Date(), likeCount: 0, LikedByUser: false)
        
        self.dataArray.append(post1)
        self.dataArray.append(post2)

        self.dataArray.append(post3)

        self.dataArray.append(post4)

    }
    
    init(post : PostView)
    {
        self.dataArray.append(post)
    }
}
