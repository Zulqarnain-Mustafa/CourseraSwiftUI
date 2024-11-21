//
//  PopularCellView.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 14/11/2024.
//

import SwiftUI

struct PopularCellView: View {
    
    var optionTitle = ""
    
    var body: some View {
        ZStack {
            Color.blue005ED240
                .clipShape(
                    RoundedRectangle(cornerRadius: 8)
                ).ignoresSafeArea()

            VStack(spacing: 16.0){
                ZStack {
                    Color.blue005ED2.clipShape(
                        RoundedRectangle(cornerRadius: 8)
                    )
                    Image("passport-ic")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24.0, height: 24.0)
                }
                .frame(width: 44.0, height: 44.0)
                
                VStack(spacing:2.0){
                    Text(optionTitle)
                        .font(.custom("PlusJakarta", size:12.0))
                        .foregroundStyle(Color.blue005ED2)
                    Text("Passport").font(.custom("PlusJakarta", size: 10.0))
                        .foregroundStyle(Color.black12121280)
                }
            }.padding()
            
        }
        .frame(maxWidth: .infinity, maxHeight: 113.0)
    }
}

#Preview {
    PopularCellView()
}
