//
//  PageView.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct PageView: View {

    let imageUrls: [String]
    
    var body: some View {
        TabView {
            ForEach(imageUrls, id: \.self) { imageUrl in
                AsyncImage(url: URL(string: imageUrl)) { phase in
                    if let image = phase.image{
                        image
                            .resizable()
                            .scaledToFill()
                    }
                    else if phase.error != nil{
                        Text("Couldn't load image")
                    }
                    else{
                        ProgressView()
                    }
                }
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .background(.white)
        .foregroundColor(.black)
        .frame(height: 257)
        .cornerRadius(15)
    }
}
