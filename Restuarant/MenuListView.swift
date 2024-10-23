//
//  MenuListView.swift
//  Restuarant
//
//  Created by Tharsol Ltd on 21/10/2024.
//

import SwiftUI

struct MenuListView: View {
    
    @ObservedObject var myMenu = Menu()
    
    var body: some View {
        VStack {
            List {
                ForEach(myMenu.items, id: \.self) { item in
                    Text(item.name)
                }
            }
        }
        
    }
}

#Preview {
    MenuListView()
}
