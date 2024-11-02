//
//  ContentView.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 31/10/2024.
//

import SwiftUI

struct LoginView: View {
    
    @State var territoryCode: String = ""
    @State var userId: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
            Color.backgroundF7FAFA.ignoresSafeArea()
            VStack(alignment: .center) {
                
                ZStack {
                    VStack{
                        Image("Logo")
                        Image("sign-in-bg").resizable().scaledToFit().clipped()
                    }
                    
                }
                VStack(alignment: .leading, spacing: 16.0) {
                    TitleLabelMedium(title: "Create an Account")
                    TextFieldWithImage(text: $territoryCode, placeholder: "Territory Code", imageName: "territory-flag-ic")
                    TextFieldWithImage(text: $userId, placeholder: "User Id", imageName: "user-textField")
                    TextFieldWithImage(text: $password, placeholder: "Password", imageName: "password-ic", isSecureTextEntry: true)
                    DefaultButton(buttonTitle: "Sign In") {
                        
                    }
                    UnderlineButton(buttonTitle: "Update Connectivity")
                    
                }.padding(.bottom,20)
            }.padding()
        }
        
        
        
    }
}

#Preview {
    LoginView()
}
