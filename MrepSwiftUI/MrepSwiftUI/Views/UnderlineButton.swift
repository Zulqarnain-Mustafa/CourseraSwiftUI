//
//  UnderlineButton.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 02/11/2024.
//

import SwiftUI

struct UnderlineButton: View {
    
    var buttonTitle: String? = "Update Connectivity"
    
    var body: some View {
        HStack(spacing: nil) {
            Spacer()
                .frame(height: 10.0)
                .background(Color.clear)
            VStack(spacing: 4.0) {
                Button {
                    
                } label: {
                    HStack() {
                        Spacer()
                        Text(buttonTitle ?? "")
                            .foregroundStyle(Color.labelBlack233939)
                            .overlay(
                            Rectangle()
                                .frame(height: 1) // Thickness of the underline
                                .offset(y: 5), // Space between text and underline
                            alignment: .bottom
                        )
                    }
                   
                        
                }.buttonStyle(UnderlineButtonStyle())
                        
            }
        }
        
    }
}

#Preview {
    UnderlineButton()
}

struct UnderlineButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.custom("Roboto-Regular", size: 14.0)).fontWeight(.medium)
            .foregroundStyle(.labelBlack233939)
            
            
            
    }
}

