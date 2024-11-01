//
//  TitleLabelMedium.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 31/10/2024.
//

import SwiftUI

struct TitleLabelMedium: View {
    
    var title: String!
    
    var body: some View {
        Text(title)
            .font(.custom("Roboto-Regular", size: 20.0))
            .fontWeight(.medium)
            .multilineTextAlignment(.leading)
            .lineLimit(nil)
    }
}

#Preview {
    TitleLabelMedium(title: "Title Label")
}
