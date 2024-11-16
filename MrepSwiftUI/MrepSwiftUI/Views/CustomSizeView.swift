//
//  CustomSizeView.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 16/11/2024.
//

import SwiftUI

struct CustomSizeView: View {
    var body: some View {
        ZStack{
            Color.white.clipShape(
                RoundedRectangle(cornerRadius: 10.0)
            ).shadow(color: Color.blackShadow000000, radius: 5, x: 0, y: 5)
            
            HStack{
                Text("Custom Size").font(.custom("PlusJakartaSans-Bold", size: 18.0))
                    .foregroundStyle(Color.black12121280)
                Spacer()
                ZStack {
                    Color.blue005ED2.clipShape(
                        RoundedRectangle(cornerRadius: 8)
                    )
                    Image("arrow-top")
                        .resizable()
                        .scaledToFit()
                        .padding(6)
                }.frame(width: 30, height: 30)
            }.padding([.leading, .trailing], 16.0)
            
        }.frame(maxHeight: 50.0)
            .padding([.leading,.trailing], 16.0)
    }
}

#Preview {
    CustomSizeView()
}
