//
//  Country.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 16/11/2024.
//

import Foundation

struct Country: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    
    // Static array with sample data
    static let Countries: [Country] = [
        Country(name: "United States", image: "f3"),
        Country(name: "United Kingdom", image: "f0"),
        Country(name: "Canada", image: "f1"),
        Country(name: "Ireland", image: "f4"),
        Country(name: "Norway", image: "f5"),
        Country(name: "Australia", image: "f7"),
        Country(name: "Switzerland", image: "f6")
        
    ]
}
