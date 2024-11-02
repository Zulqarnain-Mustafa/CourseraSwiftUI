//
//  TextFieldWithImage.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 31/10/2024.
//

import SwiftUI

struct TextFieldWithImage: View {
    
    @Binding var text: String
    
    @State var isHidePlaceholder: Bool = false
    
    var placeholder: String?
    var imageName: String?
    var isSecureTextEntry: Bool = false
    
    
    var body: some View {
        
        HStack (alignment: .center){
            Image(imageName ?? "").renderingMode(.template).foregroundStyle(.gray909A9A)
            ZStack(alignment: .leading) {
                TextFieldPlaceHolderText(placeholder: placeholder, isHide: $isHidePlaceholder)
                
                if isSecureTextEntry {
                    SecureField("", text: $text)
                        .font(.custom("Roboto-Regular", size: 14.0))
                        .fontWeight(.medium)
                        .textFieldStyle(.plain)
                        .onChange(of: text) { oldValue, newValue in
                            if newValue.count > 0 {
                                isHidePlaceholder = true
                            }else{
                                isHidePlaceholder = false
                            }
                            
                        }
                }else{
                    TextField("", text: $text)
                        .font(.custom("Roboto-Bold", size: 14.0))
                        .fontWeight(.medium)
                        .textFieldStyle(.plain)
                        .onChange(of: text) { oldValue, newValue in
                            if newValue.count > 0 {
                                isHidePlaceholder = true
                            }else{
                                isHidePlaceholder = false
                            }
                            
                        }
                }
            
            }
        }.padding()
        .background(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.borderCBD3D3, lineWidth: 2)
                .background(Color.white).cornerRadius(8)
        )
        
    }
}

#Preview {
    
    @Previewable @State var text: String = ""
    
    TextFieldWithImage(text: $text)
}
