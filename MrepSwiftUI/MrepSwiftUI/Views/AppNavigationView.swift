//
//  NavigationView.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 16/11/2024.
//

import SwiftUI

struct AppNavigationView: View {
    
    var title : String = ""
    
    var body: some View {
        VStack{
            ZStack{
                Color.blue005ED2.ignoresSafeArea(edges: .top)
                VStack(alignment: .center){
                    Text("Passport").font(.custom("PlusJakartaSans-Bold", size: 24.0))
                        .foregroundStyle(Color.white)
                }
                HStack(){
                   
                    Button {
                        
                    } label: {
                        Image("back-arrow-ic").resizable().scaledToFit().frame(width: 30.0, height: 30.0)
                    }

                    Spacer()
                }.padding()
                   
            }
        }
    }
}

#Preview {
    AppNavigationView()
}
