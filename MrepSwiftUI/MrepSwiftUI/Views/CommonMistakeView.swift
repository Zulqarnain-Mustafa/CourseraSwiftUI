//
//  CommonMistakeView.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 16/11/2024.
//

import SwiftUI

struct CommonMistakeView: View {
    var body: some View {
        ZStack {
            Color.white
                .clipShape(
                    RoundedRectangle(cornerRadius: 8)
                )
                .shadow(color: Color.blackShadow000000, radius: 5, x: 0, y: 5)
                .ignoresSafeArea()

            VStack(spacing: 0){
                ZStack {
                    
                    Image("m1")
                        .resizable()
                        .scaledToFit()
                        
                }
                Text("Passport").font(.custom("PlusJakarta", size: 10.0))
                    .foregroundStyle(Color.black12121280).padding(4)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: 113.0)
    }
}

#Preview {
    CommonMistakeView()
}
