//
//  ContentView.swift
//  CoffeeMaster
//
//  Created by MARK on 10/03/2025.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        TabView {
            Text("Home Page")
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Home Page")
                }
            OffersPage ()
                .tabItem {
                    Image(systemName:"tag")
                    Text("Offers")
                }
            Text("Orders Page")
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
            Text("This is the account page")
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
}
