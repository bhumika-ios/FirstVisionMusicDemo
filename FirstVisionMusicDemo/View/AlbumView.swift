//
//  AlbumView.swift
//  FirstVisionMusicDemo
//
//  Created by Bhumika Patel on 05/12/23.
//

import SwiftUI

struct AlbumView: View {
    @State private var searchText: String = ""
    var body: some View {
        ScrollView{
            TextField("Search in album", text: $searchText)
                .textFieldStyle(.roundedBorder)
        }.padding(.horizontal,24)
        .toolbar{
            ToolbarItemGroup(placement: .topBarLeading){
                VStack(alignment: .leading){
                    Text("Albums")
                        .font(.largeTitle)
                    Text("40 songs")
                        .foregroundStyle(.tertiary)
                }
                
            }
            ToolbarItem{
                Button(action: {}, label: {
                    Image(systemName: "line.3.horizontal.decrease")
                })
            }
        }
    }
}

#Preview {
    AlbumView()
}
