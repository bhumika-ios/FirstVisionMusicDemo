//
//  ContentView.swift
//  FirstVisionMusicDemo
//
//  Created by Bhumika Patel on 05/12/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        NavigationSplitView{
            SideBarViews()
        } detail: {
            AlbumView()
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}

