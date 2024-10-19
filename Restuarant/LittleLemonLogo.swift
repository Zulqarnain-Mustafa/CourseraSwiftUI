//
//  LittleLemonLogo.swift
//  Restuarant
//
//  Created by Tharsol Ltd on 19/10/2024.
//

import SwiftUI

struct LittleLemonLogo: View {
    
    @Binding var bindingVariable: Bool
    
    var logoStateBinding: LogoStateClass
    
    var body: some View {
        VStack() {
            ZStack(alignment: .center) {
                Circle().foregroundStyle(.blue)
                Circle().foregroundStyle(.red).frame(width: 200, height: 200)
                Color.yellow.opacity(0.5).ignoresSafeArea()
                Image("location-missing-ic")
//                    .resizable()
//                    .scaledToFit()
                HStack(spacing: 20) {
                    Button {
                        logoStateBinding.isLogoVisible.toggle()
                    } label: {
                        Text("Enable Via Class").font(.title2)
                    }
                    Spacer()
                    Button {
                        logoStateBinding.isLogoVisible.toggle()
                    } label: {
                        Text("Enable Via Class").font(.title2)
                    }
                }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            }
            
//            Button {
//                bindingVariable.toggle()
//            } label: {
//                Text("Enable Location").font(.title2)
//            }
            
            
            

        }
    }
}

#Preview {
    
    @Previewable @State var bindingVariable: Bool = false
    @Previewable var logoStateBinding = LogoStateClass()
    
    LittleLemonLogo(bindingVariable: $bindingVariable, logoStateBinding: logoStateBinding)
}
