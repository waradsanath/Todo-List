//
//  Todo_ListApp.swift
//  Todo List
//
//  Created by Sanath Warad on 30/6/24.
//

import SwiftUI

@main
struct Todo_ListApp: App {
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(isDarkMode ? .dark: .light)
        }
    }
}
