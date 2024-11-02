//
//  ValidationView.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 02/11/2024.
//

import SwiftUI

struct ValidationView: View {
    
    @State var companyCode: String = ""
    
    @State var isShowAlert: Bool = false
    
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
                    TitleLabelMedium(title: "Startup Validation")
                    TextFieldWithImage(text: $companyCode, placeholder: "Company Code", imageName: "territory-flag-ic")
                    DefaultButton(buttonTitle: "Sign In") {
                        self.validateCompanyCode()
                    }
                }.padding(.bottom,20)
            }.padding()
                .alert("Sorry!", isPresented:  $isShowAlert) {
                    Button("Ok") {
                        isShowAlert = false
                    }
                } message: {
                    Text("Please enter a valid company code.").font(.title)
                }

        }
    }
    
    private func validateCompanyCode() {
        if companyCode.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            isShowAlert = true
            return
        }
    }
    
}

#Preview {
    ValidationView()
}
