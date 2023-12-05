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
            }
        } detail: {
            
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
