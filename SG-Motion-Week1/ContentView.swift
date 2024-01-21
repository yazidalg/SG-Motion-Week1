//
//  ContentView.swift
//  SG-Motion-Week1
//
//  Created by Yazid Al Ghozali on 20/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                ImageScroller(imageNames: ["super_deal", "super_family", "super_deal"])
                Menu()
                ScrollView(.horizontal) {
                    Recommendation(images: ["suggested_1", "suggested_2"])
                        .padding(.horizontal, 20)
                        .padding(.vertical, 20)
                }
            }
            .navigationTitle("")
            .toolbar {
                ToolbarItem(placement: .topBarLeading, content: {
                    VStack(alignment: .leading) {
                        Text("Hi, Michael!")
                            .font(.title)
                            .bold()
                        Text("Get your favorite food here!")
                            .fontWeight(.medium)
                    }
                })
                ToolbarItem(placement: .topBarTrailing, content: {
                    ZStack {
                        Image(systemName: "cart.fill")
                            .foregroundStyle(.colorGray)
                        Circle()
                            .foregroundStyle(.colorPrimary)
                            .frame(width: 8)
                            .position(CGPoint(x: 25, y: 2))
                    }
                })
            }
        }
    }
}

#Preview {
    ContentView()
}
