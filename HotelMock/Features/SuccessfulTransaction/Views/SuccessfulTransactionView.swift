//
//  SuccessfulTransactionView.swift
//  HotelMock
//
//  Created by Snow Lukin on 02.10.2023.
//

import SwiftUI

struct SuccessfulTransactionView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .foregroundColor(Color(red: 0.965, green: 0.965, blue: 0.976))
                    .frame(width: 94, height: 94)
                Image("party-popper")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 44, height: 44)
            }
            .padding(.bottom, 32)
            Text("Ваш заказ принят в работу")
                .font(FontStyle.title.font)
                .padding(.horizontal, 16)
                .padding(.bottom, 20)
            Text("Подтверждение заказа №\(Int.random(in: 1..<999999)) может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.")
                .font(FontStyle.body.font)
                .foregroundColor(Color(red: 0.51, green: 0.529, blue: 0.588))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 23)
        }
        .bottomButton(title: "Супер!") {
            coordinator.popToRoot()
        }
        .navigationTitle("Заказ оплачен")
    }
}

struct SuccessfulTransactionView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessfulTransactionView()
    }
}
