//
//  PostModel.swift
//  Doggram
//
//  Created by Bander Jumah on 13/06/2023.
//

import Foundation
import SwiftUI

struct CommentModel: Identifiable, Hashable{
    
    var id = UUID()
    var commentID: String
    var userID: String
    var content: String
    var username: String
    var dateCreated: Date
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
