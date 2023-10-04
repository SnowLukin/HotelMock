//
//  HotelSpecsListView.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct HotelSpecsListView: View {
    
    let items: [SpecListItem]
    
    var body: some View {
        VStack {
            ForEach(items) { item in
                VStack(alignment: .leading) {
                    cell(for: item)
                    if item.id != items.last?.id {
                        Divider()
                            .padding(.trailing, 15)
                            .padding(.leading, 37)
                    }
                }
            }
        }
        .padding(15)
        .background(Color(red: 0.984, green: 0.984, blue: 0.988))
        .cornerRadius(15)
    }
}

struct HotelSpecsListView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            HotelSpecsListView(items: [
                SpecListItem(
                    title: "Удобства",
                    text: "Самое необходимое",
                    image: Images.emojiHappy
                ),
                SpecListItem(
                    title: "Что включено",
                    text: "Самое необходимое",
                    image: Images.tickSquare
                ),
                SpecListItem(
                    title: "Что не включено",
                    text: "Самое необходимое",
                    image: Images.closeSquare
                )
            ]).padding(16)
        }
    }
}

extension HotelSpecsListView {
    @ViewBuilder
    private func cell(for item: SpecListItem) -> some View {
        HStack(spacing: 12) {
            item.image
            VStack(spacing: 2) {
                TitleView(item.title, style: .headline)
                TitleView(item.text, style: .link)
                .foregroundColor(
                    Color(red: 0.511, green: 0.528, blue: 0.588)
                )
            }
            Image(systemName: "chevron.right")
        }
    }
}
