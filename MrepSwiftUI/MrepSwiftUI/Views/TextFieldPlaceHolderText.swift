//
//  TextFieldPlaceHolderText.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 31/10/2024.
//

import SwiftUI

struct TextFieldPlaceHolderText: View {
    
    var placeholder: String?
    @Binding var isHide: Bool
    
    var body: some View {
        if !isHide {
            Text(placeholder ?? "")
                .font(.custom("Roboto-Regular", size: 14.0))
                .fontWeight(.medium)
                .foregroundStyle(Color.gray909A9A)
        }
    }
}

#Preview {
    
    @Previewable @State var isHide: Bool = false
    
    TextFieldPlaceHolderText(isHide: $isHide)
}
