//
//  MainView.swift
//  SG-Motion-Week1
//
//  Created by Yazid Al Ghozali on 22/01/24.
//

import SwiftUI

struct MainView: View {
    @State private var selectedIndex: Int = 0
    var body: some View {
        TabView(selection: $selectedIndex) {
            Group {
                ContentView()
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                    .tag(0)
                Text("Coming soon")
                    .tabItem { Label("Search", systemImage: "magnifyingglass") }
                    .tag(1)
                Text("Recent")
                    .tabItem { Label("Recent", systemImage: "arrow.clockwise.circle.fill") }
                    .tag(2)
                Text("Profile")
                    .tabItem { Label("Profile", systemImage: "person.fill") }
                    .tag(3)
            }
            .toolbar(.visible, for: .tabBar)
            .toolbarBackground(.colorWhite, for: .tabBar)
        }
    }
}

#Preview {
    MainView()
}
