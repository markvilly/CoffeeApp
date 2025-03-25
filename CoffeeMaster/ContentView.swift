//
//  ContentView.swift
//  CoffeeMaster
//
//  Created by MARK on 10/03/2025.
//

import SwiftUI

struct ContentView: View {
//    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Home Page")
                }
            OffersPage ()
                .tabItem {
                    Image(systemName:"tag")
                    Text("Offers")
                }
            CartPage()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
            UserPage()
                .tabItem {
                    Image(systemName: "person")
                    Text("User")
                }
        }
        
        
    }
}

//struct Greeting: View {
//    @State var name = "unnamed"
//    var body: some View {
//        VStack {
//            TextField("Enter your Name", text: $name) // this modifiest the name variable.
//            Text("Hello \(name)")
//        }
//        .padding()
//    }
//}

#Preview {
    ContentView()
        .environmentObject(CartManager())
        .environmentObject(MenuManager())
}
