//
//  DefaultButton.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 01/11/2024.
//

import SwiftUI

struct DefaultButton: View {
    
    var buttonTitle: String?
    
    var body: some View {
        
//        Button("Press Me") {
//            print("Button pressed!")
//        }
//        .padding()
//        .background(Color(red: 0, green: 0, blue: 0.5))
//        .foregroundStyle(.red)
        Button {
            print("Button pressed")
        } label: {
            Text(buttonTitle ?? "sdfadsfasdf")
//                .font(.custom("Roboto-Regular", size: 16.0)).fontWeight(.medium)
//                .foregroundStyle(.white)
//                .padding()
//                .frame(maxWidth: .infinity)
//                .background(Color.primaryGreen159696)
//                .clipShape(
//                    RoundedRectangle(cornerRadius: 8)
//                )
        }.buttonStyle(MrepButton())
        
        
        
        
        
    }
}

#Preview {
    DefaultButton()
}


struct MrepButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.custom("Roboto-Regular", size: 16.0)).fontWeight(.medium)
            .foregroundStyle(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.primaryGreen159696)
            .clipShape(
                RoundedRectangle(cornerRadius: 8)
            )
    }
}
