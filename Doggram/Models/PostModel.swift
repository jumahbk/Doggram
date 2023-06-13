//
//  PostModel.swift
//  Doggram
//
//  Created by Bander Jumah on 13/06/2023.
//

import Foundation
import SwiftUI

struct PostModel: Identifiable, Hashable{
    
    var id = UUID()
    var userID: String
    var postID: String
    var username: String
    var caption: String?
    var dateCreate: Date
    var likeCount: Int
    var LikedByUser: Bool
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
