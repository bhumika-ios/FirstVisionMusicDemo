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
            List {
                Text("Menu Item")
            }.toolbar{
                ToolbarItem(placement: .topBarLeading){
                    VStack(alignment: .leading){
                        Text("Library")
                            .font(.largeTitle)
                        Text("All Music")
                            .foregroundStyle(.tertiary)
                    }
                }
                ToolbarItem{
                    Button(action: {}, label: {
                        Image(systemName: "ellipsis")
                    })
                }
            }
        } detail: {
            
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
