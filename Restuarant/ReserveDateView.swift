//
//  ReserveDateView.swift
//  Restuarant
//
//  Created by Tharsol Ltd on 19/10/2024.
//

import SwiftUI

struct ReserveDateView: View {
    
    @State var selectedDate = Date()
    
    
    var body: some View {
        Form {
       
            VStack (alignment: .leading){
                HStack {
                    DatePicker("", selection: $selectedDate, displayedComponents: [.date,.hourAndMinute]).frame(alignment: .leading)
                    Spacer()
                    
                    Button {
                        print("Done")
                    } label: {
                        HStack {
                            Image(systemName: "arrow.forward")
                            Text("Done")
                        }
                    }
                }
                Text("Date is \(selectedDate.formatted(date: .long, time: .complete))")
                
            } //- HStack
            
            
        }
    }
}

#Preview {
    ReserveDateView()
}
