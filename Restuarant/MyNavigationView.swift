//
//  MyNavigationView.swift
//  Restuarant
//
//  Created by Tharsol Ltd on 19/10/2024.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View {
        NavigationView {
            HStack {
                NavigationLink {
                    Color.red
                } label: {
                    Text("Red")
                }
                NavigationLink {
                    Color.green
                } label: {
                    Text("Green")
                }
            }
        }
    }
}

#Preview {
    MyNavigationView()
}
