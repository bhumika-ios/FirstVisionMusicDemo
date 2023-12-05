//
//  AlbumView.swift
//  FirstVisionMusicDemo
//
//  Created by Bhumika Patel on 05/12/23.
//

import SwiftUI

struct AlbumView: View {
    @State private var searchText: String = ""
    let colums: [GridItem] = [GridItem(.adaptive(minimum: 160, maximum: 200))]
    var body: some View {
        ScrollView{
            TextField("Search in album", text: $searchText)
                .textFieldStyle(.roundedBorder)
            LazyVGrid(columns: colums, spacing: 24){
                ForEach(albums) { album in
                    Button (action: {}) {
                        VStack(alignment: .leading){
                            AsyncImage(url: URL(string: album.image)) { image in
                                image.resizable()
                            }placeholder: {
                                Rectangle()
                            }.aspectRatio(1, contentMode: . fill)
                                .scaledToFill()
                                .cornerRadius (10)
                            Text(album.title)
                                .lineLimit(1)
                            Text(album.subTitle)
                                .foregroundStyle(.tertiary)
                                .lineLimit (1)
                        }  .hoverEffect()
                    }.buttonStyle(.plain)
                      
                }
            }
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
