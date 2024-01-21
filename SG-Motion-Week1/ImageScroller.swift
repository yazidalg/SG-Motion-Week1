//
//  ImageScroller.swift
//  SG-Motion-Week1
//
//  Created by Yazid Al Ghozali on 21/01/24.
//

import SwiftUI

struct ImageScroller: View {
    
    var imageNames : [String]
    let timer = Timer.publish(every: 3.0, on: .main, in: .common).autoconnect()
    @State private var selectedImage: Int = 0
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedImage) {
                ForEach(0..<imageNames.count, id: \.self) { index in
                    Image("\(imageNames[index])")
                        .resizable()
                        .frame(width: 360, height: 160)
                        .tag(index)
                }
            }
            
                        
            HStack {
                ForEach(0..<imageNames.count, id: \.self) { index in
                    Circle()
                        .frame(width: 8, height: 8)
                        .foregroundStyle(selectedImage == index ? .colorPrimary : .colorGray)
                        .onTapGesture {
                            selectedImage = index
                        }
                }
            }
            .offset(y: 100)
        }
        .onReceive(timer) { _ in
            withAnimation(.default) {
                selectedImage = (selectedImage + 1) % imageNames.count
            }
        }
    }
}

#Preview {
    ImageScroller(imageNames: ["super_deal", "super_family", "super_deal"])
}
