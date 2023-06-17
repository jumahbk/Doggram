//
//  CommentsView.swift
//  Doggram
//
//  Created by Bander Jumah on 28/11/1444 AH.
//

import SwiftUI

struct CommentsView: View {
    @State var submissionText: String = ""
    var body: some View {
        VStack{
            ScrollView{
                Text("Place Holder")
                Text("Place Holder")
                Text("Place Holder")
                Text("Place Holder")
                Text("Place Holder")
                Text("Place Holder")
                Text("Place Holder")
                Text("Place Holder")
                Text("Place Holder")

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
        .navigationBarTitle("Comments").navigationBarTitleDisplayMode(.inline)
        }
        
    }


struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CommentsView()
        }
    
    }
}
