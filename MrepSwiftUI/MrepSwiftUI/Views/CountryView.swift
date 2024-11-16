//
//  CountryView.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 16/11/2024.
//

import SwiftUI

struct CountryView: View {
    
    @State var isSelected: Bool = false
    
    let country: Country
    
    var body: some View {
        ZStack{
            (isSelected ? Color.blue005ED2 : Color.white).clipShape(
                RoundedRectangle(cornerRadius: 6)
            )
            
            HStack{
                Image(country.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18 , height: 18)
                Text(country.name).font(.custom("PlusJakartaSans-Regular", size: 12.0))
            }.padding([.leading, .trailing],8.0)
        }.frame(maxWidth: .infinity, maxHeight: 36.0)
    }
}

#Preview {
    var country = Country(name: "United States", image: "f3")
    CountryView(country: country)
}
