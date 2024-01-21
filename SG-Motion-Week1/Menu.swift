//
//  Menu.swift
//  SG-Motion-Week1
//
//  Created by Yazid Al Ghozali on 21/01/24.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        HStack(spacing: 41) {
            VStack {
                Image("food")
                    .frame(width: 48, height: 48)
                    .overlay(
                        Circle().stroke(.colorGray))
                    .padding(.bottom, 4)
                Text("Food")
            }
            VStack {
                Image("table")
                    .background(.white)
                    .frame(width: 48, height: 48)
                    .overlay(
                        Circle().stroke(.colorGray))
                    .padding(.bottom, 4)
                Text("Table")
            }
            VStack {
                Image("payment")
                    .background(.white)
                    .frame(width: 48, height: 48)
                    .overlay(
                        Circle().stroke(.colorGray))
                    .padding(.bottom, 4)
                Text("Payment")
            }
            VStack {
                Image("more")
                    .background(.white)
                    .frame(width: 48, height: 48)
                    .overlay(
                        Circle().stroke(.colorGray))
                    .padding(.bottom, 4)
                Text("More")
            }
        }
    }
}

#Preview {
    Menu()
}
