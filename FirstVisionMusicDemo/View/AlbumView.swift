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
                .padding(.bottom)
            LazyVGrid(columns: colums, spacing: 24){
                ForEach(albums) { album in
                    Button (action: {}) {
                        VStack(alignment: .leading){
                            AsyncImage(url: URL(string: album.image)) { image in
                                image.resizable()
                            }placeholder: {
                                Rectangle().foregroundStyle(.tertiary)
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
        .toolbar {
            ToolbarItemGroup (placement: .bottomOrnament) {
                HStack{
                    Button{} label:{
                        Image (systemName: "backward.fill")
                    }
                    Button{} label:{
                        Image (systemName: "pause.fill")
                    }
                    Button{} label:{
                        Image (systemName: "forward.fill")
                    }
                    PlayCardView()
                    Button{} label:{
                        Image (systemName: "quote.bubble")
                    }
                    Button{} label:{
                        Image (systemName: "list.bullet")
                    }
                    Button{} label:{
                        Image (systemName: "speaker wave.3.fill")
                    }
                }.padding (.vertical,8)
            }
        }
    }
}

#Preview {
    AlbumView()
}

struct PlayCardView: View {
    var body: some View {
        HStack{
            AsyncImage(url: URL(string:
                                    "https://i.postimg.cc/ZvLtPzmB/Rectangle-4.png")){ image in
                image.resizable()
            }placeholder: {
                Rectangle().foregroundStyle(.tertiary)
            }.frame(width: 48, height: 48)
                .cornerRadius(6)
            VStack (alignment: .leading) {
                Text ("Kokomo" )
                Text ("The Beach Boys")
                    .font(.caption2)
                    .foregroundStyle(.tertiary)
            }.frame(width: 160, alignment: .leading)
            Button (action: {}) {
                Image(systemName: "ellipsis")
            }.buttonBorderShape(.circle)
        }
        .padding (.all, 8)
        .background(.regularMaterial, in: .rect(cornerRadius: 14) )
    }
}
