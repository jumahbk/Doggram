//
//  MessageView.swift
//  Doggram
//
//  Created by Bander Jumah on 29/11/1444 AH.
//

import SwiftUI

struct MessageView: View {
    @State var comment: CommentModel
    var body: some View {
        HStack{
            Image("dog1").resizable().scaledToFill().frame(width: 40, height: 40, alignment: .center).cornerRadius(20)
        
            VStack(alignment: .leading, spacing:4, content: {
                Text(comment.username).font(.caption).foregroundColor(.gray)
                Text(comment.content).padding(.all, 20).foregroundColor(.primary).background(Color.gray).cornerRadius(10)
                Spacer(minLength: 0)
            })
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var cm = CommentModel(commentID: "d", userID: "String", content: "adfs", username: "sdf", dateCreated: Date())
    static var previews: some View {
        MessageView(comment: cm).previewLayout(.sizeThatFits)
    }
}
