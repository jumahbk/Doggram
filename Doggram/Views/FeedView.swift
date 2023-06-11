//
//  FeedView.swift
//  Doggram
//
//  Created by Bander Jumah on 11/06/2023.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            Text("PlaceHolder")
            Text("PlaceHolder")

            Text("PlaceHolder")

            Text("PlaceHolder")

        })
        .navigationBarTitle("Feed View")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView()
        }

    }
}
