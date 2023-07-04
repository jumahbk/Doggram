//
//  BrowseView.swift
//  Doggram
//
//  Created by Bander Jumah on 01/12/1444 AH.
//

import SwiftUI

struct BrowseView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            CarsoulView()
            ImageGridView(posts: PostArrayObject())
        }.navigationTitle("Browse").navigationBarTitleDisplayMode(.inline)
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BrowseView()

        }
    }
}
