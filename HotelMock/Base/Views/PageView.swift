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

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(
            imageUrls: [
                "https://worlds-trip.ru/wp-content/uploads/2022/10/white-hills-resort-5.jpeg",
                "https://q.bstatic.com/xdata/images/hotel/max1024x768/267647265.jpg?k=c8233ff42c39f9bac99e703900a866dfbad8bcdd6740ba4e594659564e67f191&o="
            ]
        )
    }
}
