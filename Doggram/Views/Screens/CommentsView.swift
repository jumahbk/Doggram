//
//  CommentsView.swift
//  Doggram
//
//  Created by Bander Jumah on 28/11/1444 AH.
//

import SwiftUI

struct CommentsView: View {
    @State var submissionText: String = ""
    @State var commentArray = [CommentModel]()

    var body: some View {
        VStack{
            ScrollView{
                LazyVStack{
                    ForEach(commentArray, id: \.self) { comment in
                        MessageView(comment: comment)
                    }
                }

            }
            HStack{
                Image("dog1").resizable().scaledToFill().frame().frame(width: 40, height: 40, alignment: .center).cornerRadius(20)
                TextField(" add coment here ..", text: $submissionText)
                Button {
                    
                } label: {
                    Image(systemName: "paperplane.fill").font(.title2)

                }.accentColor(Color.MyTheme.purpleColor)

            }.padding(.all, 6)
                
            }
        .navigationBarTitle("Comments").navigationBarTitleDisplayMode(.inline).onAppear {
            getComments()
        }
        }
    func getComments(){
        print("Get Comments from Database")
       var cm = CommentModel(commentID: "d", userID: "String", content: "adfs", username: "sdf", dateCreated: Date())
        var cm1 = CommentModel(commentID: "d", userID: "String", content: "adfs", username: "shady", dateCreated: Date())
        var cm3 = CommentModel(commentID: "d", userID: "String", content: "adfs", username: "nourah", dateCreated: Date())
        var cm4 = CommentModel(commentID: "d", userID: "String", content: "adfs", username: "fahd", dateCreated: Date())
        var cm5 = CommentModel(commentID: "d", userID: "String", content: "adfs", username: "hamza", dateCreated: Date())
        var cm6 = CommentModel(commentID: "bitch", userID: "bitch", content: "bitch", username: "bitch", dateCreated: Date())
        
        self.commentArray.append(cm)
        self.commentArray.append(cm3)
        self.commentArray.append(cm4)
        self.commentArray.append(cm5)
        self.commentArray.append(cm6)

    }
    }


struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CommentsView()
        }
    
    }
}
