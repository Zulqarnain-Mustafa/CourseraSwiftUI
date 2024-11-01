//
//  ContentView.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 31/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .center) {
            Spacer()
            Image("Logo")
            ZStack {
                Image("sign-in-bg")
            }
            VStack(alignment: .leading, spacing: 16.0) {
                TitleLabelMedium(title: "Create an Account")
                TextFieldWithImage(placeholder: "Territory Code", imageName: "territory-flag-ic")
                TextFieldWithImage(placeholder: "User Id", imageName: "user-textField")
                TextFieldWithImage(placeholder: "Password", imageName: "password-ic", isSecureTextEntry: true)
                DefaultButton(buttonTitle: "Sign In")
                
            
            }.padding(.bottom,20)
        }.padding()
    
        
    }
}

#Preview {
    ContentView()
}
