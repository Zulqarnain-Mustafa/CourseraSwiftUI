//
//  GestureRecognizer.swift
//  Restuarant
//
//  Created by Tharsol Ltd on 22/10/2024.
//

import SwiftUI

struct GestureRecognizer: View {
    
    @State var flag = false
    
    var body: some View {
        Text("Tap me")
            .foregroundStyle(.white)
            .font(.largeTitle)
            .padding(15)
            .background(flag ? Color.red : Color.green)
            .onTapGesture {
                flag.toggle()
            }
    }
}

#Preview {
    GestureRecognizer()
}
