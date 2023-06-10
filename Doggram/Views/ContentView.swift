//
//  ContentView.swift
//  Doggram
//
//  Created by Bander Jumah on 21/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Screen 1").tabItem {
                Image(systemName: "book.fill")
                Text("tab 1")
            }
            Text("Screen 2").tabItem {
                Image(systemName: "book.fill")
                Text("Browse")
            }
            Text("Screen 3").tabItem {
                Image(systemName: "book.fill")
                Text("tab 1")
            }
            Text("Screen 1").tabItem {
                Image(systemName: "book.fill")
                Text("tab 1")
            }
        }.accentColor(Color.MyTheme.yellowColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
