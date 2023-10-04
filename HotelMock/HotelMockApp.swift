//
//  HotelMockApp.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

@main
struct HotelMockApp: App {
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        appearance.titleTextAttributes = [
            .font : UIFont(name: "SFProDisplay-Medium", size: 18)
            ?? .systemFont(ofSize: 18, weight: .medium)
        ]
        appearance.shadowColor = .clear
        appearance.backgroundColor = .white
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        
        UINavigationBar.appearance().tintColor = .black
    }
    
    var body: some Scene {
        WindowGroup {
            CoordinatorView()
        }
    }
}
