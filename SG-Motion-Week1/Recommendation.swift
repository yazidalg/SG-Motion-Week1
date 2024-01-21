//
//  Recommendation.swift
//  SG-Motion-Week1
//
//  Created by Yazid Al Ghozali on 21/01/24.
//

import SwiftUI

struct Recommendation: View {
    var images : [String]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Recommendation")
                .padding(.bottom, 16)
                .font(.system(size: 20))
                .fontWeight(.medium)
            HStack(spacing: 16) {
                ForEach(0..<images.count, id: \.self) { index in
                    ZStack {
                        RoundedRectangle(cornerRadius: 6)
                            .frame(width: 160, height: 262)
                            .foregroundStyle(.white)
                            .shadow(radius: 10)
                        VStack(alignment: .leading) {
                            Image("\(images[index])")
                            VStack(alignment: .leading) {
                                Text("Family Package")
                                    .fontWeight(.medium)
                                    .font(.system(size: 16))
                                    .foregroundStyle(.black)
                                Text("1 Large table 6 chair")
                                    .font(.system(size: 12))
                                    .foregroundStyle(.colorGray)
                                Text("Rp. 320.000")
                                    .font(.system(size: 14))
                                    .foregroundStyle(.black)
                                    .fontWeight(.regular)
                                    .padding(.top, 4)
                            }
                            .padding(.leading, 8)
                            Spacer()
                        }
                        ZStack {
                            Rectangle()
                                .foregroundStyle(.clear)
                                .frame(width: 60, height: 24)
                                .background(.black.opacity(0.71))
                                .clipShape(
                                    .rect(bottomLeadingRadius: 6, topTrailingRadius: 6))
                            HStack {
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 16, height: 16)
                                    .foregroundStyle(.colorYellow)
                                Text("4.9")
                                    .font(.system(size: 12))
                                    .fontWeight(.regular)
                                    .foregroundStyle(.white)
                            }
                        }
                        .offset(x: 50, y: -119)
                    }
                    .frame(width: 160, height: 262)
                }
            }
        }
    }
}

//struct Recommendation_Previews: PreviewProvider{
//    static var previews: some View {
//        Recommendation(images: ["suggested_1", "suggested_2", "suggested_1", "suggested_2"])
//            .background(.white)
//            .previewLayout(.fixed(width: 160, height: 262))
//    }
//}
