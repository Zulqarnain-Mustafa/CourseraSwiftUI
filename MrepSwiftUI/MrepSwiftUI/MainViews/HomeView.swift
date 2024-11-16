//
//  HomeView.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 16/11/2024.
//

import SwiftUI

struct HomeView: View {
    
    let countries = Country.Countries
    
    var body: some View {
        
        VStack(){
            HomeTopView()
            
            ZStack{
                Color.backgroundF3F4F8.ignoresSafeArea()
                VStack(spacing:16){
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(countries) { country in
                                CountryView(country: country)
                            }
                        }
                        .padding()
                    }
                    
                    CustomSizeView()
                    
                    VStack(alignment: .leading){
                        Text("Most Popular").font(.custom("PlusJakartaSans-Bold", size: 20.0))
                            .foregroundStyle(Color.black12121280).padding([.leading, .trailing],20.0)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {
                                ForEach(0..<3, id: \.self) { index in
                                    PopularCellView()
                                }
                            }
                            .padding()
                        }
                        
                    }
                    Spacer()
                }
                
            }
           
        }
    }
}

#Preview {
    HomeView()
}
