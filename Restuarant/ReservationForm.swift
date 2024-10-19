//
//  ReservationForm.swift
//  Restuarant
//
//  Created by Tharsol Ltd on 19/10/2024.
//

import SwiftUI

struct ReservationForm: View {
    
    @State var name: String = ""
    
    var body: some View {
        
        Form {
            TextField("Type your name", text: $name) { state in
                print("State: \(state)")
            }
            .onSubmit {
                print("Submitted")
            }
            .onChange(of: name) { oldValue, newValue in
                print(oldValue)
                print(newValue)
            }
            .padding(8)
            
        }
        
    }
}

#Preview {
    ReservationForm()
}
