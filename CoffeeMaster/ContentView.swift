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
                    Image(systemName: "info")
                    Text("Home Page")
                }
            OffersPage()
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
