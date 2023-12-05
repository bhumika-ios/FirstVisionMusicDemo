//
//  SideBarViews.swift
//  FirstVisionMusicDemo
//
//  Created by Bhumika Patel on 05/12/23.
//

import SwiftUI

struct SideBarViews: View {
   
        var body: some View {
            List (sideMenuItems){ item in
                NavigationLink(value: item.self){
                    Label(item.name, systemImage: item.icon)
                        .foregroundStyle(.primary)
                    
                }.navigationDestination(for: SideMenuItem.self){item in
                    
                }
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
        }
    
}

