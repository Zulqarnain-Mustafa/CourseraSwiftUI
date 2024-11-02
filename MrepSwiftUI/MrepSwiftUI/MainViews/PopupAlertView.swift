//
//  PopupAlertView.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 02/11/2024.
//

import SwiftUI

struct PopupAlertView: View {
    var body: some View {
        ZStack {
            Color.clear.ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Button("", image: ImageResource(name: "cross-ic", bundle: .main)) {
                        
                    }.foregroundStyle(Color.gray909A9A)
                }
                Spacer()
                Text("Hello, World!")
            }.padding()
                .frame(maxWidth: .infinity)
            .background(Color.green)
                .clipShape(
                    
                    RoundedRectangle(cornerRadius: 12)
                    
                )
                .ignoresSafeArea()
        }
    }
}

#Preview {
    PopupAlertView()
}
