//
//  MenuItem.swift
//  Restuarant
//
//  Created by Tharsol Ltd on 21/10/2024.
//

import Foundation

struct MenuItem: Identifiable,Hashable {
    var id =  UUID()
    var name: String
}

class Menu: ObservableObject {
    
    @Published var items: [MenuItem] = Menu.getMenuItems()
    
    
    static func getMenuItems() -> [MenuItem] {
        return [
            .init( name: "Pizza"),
            .init(name: "Pasta"),
            .init(name: "Salad"),
            .init(name: "Bread"),
            .init(name: "Dessert"),
        ]
    }
}
