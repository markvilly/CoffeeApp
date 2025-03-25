//
//  CoffeeMasterApp.swift
//  CoffeeMaster
//
//  Created by MARK on 10/03/2025.
//

import SwiftUI

@main
struct CoffeeMasterApp: App {
    
    var menuManager = MenuManager()
    var cartManager = CartManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}
