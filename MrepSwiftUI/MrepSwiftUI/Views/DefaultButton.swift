//
//  DefaultButton.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 01/11/2024.
//

import SwiftUI

struct DefaultButton: View {
    
    var buttonTitle: String?
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Text(buttonTitle ?? "sdfadsfasdf")
        }.buttonStyle(MrepButton())
    }
}

#Preview {
    DefaultButton() {
        print("Button Tapped in preview")
    }
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
