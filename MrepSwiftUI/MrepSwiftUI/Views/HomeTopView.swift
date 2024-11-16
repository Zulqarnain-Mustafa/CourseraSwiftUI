//
//  HomeTopView.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 16/11/2024.
//

import SwiftUI

struct HomeTopView: View {
    var body: some View {
        
        ZStack{
            
            Color.blue005ED2.ignoresSafeArea()
            
            VStack {
                HStack(spacing: 16.0){
                    VStack(alignment:.leading){
                        Text("Hello,")
                            .font(.custom("PlusJakartaSans-Bold", size: 30.0))
                            .foregroundStyle(Color.white)
                        Text("What Kind of document do you need a photo for?")
                            .font(.custom("PlusJakartaSans-Regular", size: 16.0))
                            .lineLimit(nil)
                            .foregroundStyle(Color.white)
                        
                    }
                    
                    ZStack {
                        Color.white.clipShape(
                            RoundedRectangle(cornerRadius: 8)
                        )
                        Image("setting-ic")
                            .resizable()
                            .scaledToFit()
                            .padding(6)
                    }.frame(width: 30, height: 30)
                    
                }
                
            }.padding(16)
        }
        .frame(maxHeight: 120)
    }
}

#Preview {
    HomeTopView()
}
