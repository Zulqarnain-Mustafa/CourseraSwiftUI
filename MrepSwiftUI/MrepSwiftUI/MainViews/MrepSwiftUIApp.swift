//
//  MrepSwiftUIApp.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 31/10/2024.
//

import SwiftUI

@main
struct MrepSwiftUIApp: App {
    
//    init() {
//            let appearance = UINavigationBarAppearance()
//            appearance.configureWithOpaqueBackground()
//        appearance.backgroundColor = UIColor.darkBlue2777B6 // Set the background color
//            appearance.titleTextAttributes = [.foregroundColor: UIColor.white] // Set the title color
//
//            UINavigationBar.appearance().standardAppearance = appearance
//            UINavigationBar.appearance().scrollEdgeAppearance = appearance
//        }
    
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
