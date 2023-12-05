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
        TabView{
            NavigationSplitView{
                SideBarViews()
            } detail: {
                AlbumView()
            }.tabItem {
                Label("Browse", systemImage: "music.note")
            }.tag(0)
            NavigationSplitView{
                SideBarViews()
            } detail: {
                Text("Favorite")
            }.tabItem {
                    Label("Favorite", systemImage: "heart.fill")
                }.tag(1)
            NavigationSplitView{
                SideBarViews()
            } detail: {
                Text("PlayList")
            }
                .tabItem {
                    Label("Playlist", systemImage: "play.square.stack")
                }.tag(2)
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}

