//
//  ChoosePhotoView.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 16/11/2024.
//

import SwiftUI

struct ChoosePhotoView: View {
    
    @Environment(\.presentationMode) var presentationMode 
    
    let bulletStringArray = [
        "Have even lighting.",
        "Keep facial expressions neutral.",
        "Solid or even background will be more effective.",
        "Look straight ahead into the camera.",
        "Keep shoulders aligned and head straight.",
        "Make sure you don't click a selfie for such formal photos.",
    ]
    
    var body: some View {
        VStack(spacing: 0){
            
            AppNavigationView(title: "Passport").frame(height: 44)
            Spacer()
            ZStack {
                Color.backgroundF3F4F8.ignoresSafeArea()
                ScrollView {
                    VStack(alignment: .leading){
                        VStack(alignment: .leading){
                            Text("Common Mistakes").font(.custom("PlusJakartaSans-Bold", size: 20.0))
                                .foregroundStyle(Color.black12121280)
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 16) {
                                    ForEach(0..<4, id: \.self) { index in
                                        CommonMistakeView()
                                    }
                                }
                                
                            }
                            
                        }
                        Text("How To Take A Good Photo?")
                        
                        VStack(alignment: .leading,spacing: 0){
                            BulletView(bulletText: self.bulletStringArray[0])
                            BulletView(bulletText: self.bulletStringArray[1])
                            BulletView(bulletText: self.bulletStringArray[2])
                            BulletView(bulletText: self.bulletStringArray[3])
                            BulletView(bulletText: self.bulletStringArray[4])
                            BulletView(bulletText: self.bulletStringArray[5])
    //                        ScrollView {
    //
    //                            ForEach(bulletStringArray, id: \.self) { text in
    //
    //                            }
    //                        }
                        }
                        DefaultButton(buttonTitle: "Choose Photo") {
                            
                        }
                        DefaultButton(buttonTitle: "Capture Photo") {
                            
                        }
                        
                    }.padding()
                }
                
            }
            
        }
        .navigationBarBackButtonHidden(true)
//        .toolbarBackground(Color.darkBlue2777B6, for: .navigationBar)
//        .toolbarBackground(.visible, for: .navigationBar)
    }
}

#Preview {
    ChoosePhotoView()
}
