//
//  ChoosePhotoView.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 16/11/2024.
//

import SwiftUI

struct ChoosePhotoView: View {
    var body: some View {
        VStack{
            
            AppNavigationView(title: "Passport")
            ZStack {
                Color.backgroundF3F4F8
                VStack{
                    VStack(alignment: .leading){
                        Text("Common Mistakes").font(.custom("PlusJakartaSans-Bold", size: 20.0))
                            .foregroundStyle(Color.black12121280).padding([.leading, .trailing],20.0)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {
                                ForEach(0..<4, id: \.self) { index in
                                    CommonMistakeView()
                                }
                            }
                            .padding()
                        }
                        
                    }
                }
            }
            
        }
    }
}

#Preview {
    ChoosePhotoView()
}
