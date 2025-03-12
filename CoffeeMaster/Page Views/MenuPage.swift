//
//  MenuPage.swift
//  CoffeeMaster
//
//  Created by MARK on 11/03/2025.
//

import SwiftUI

struct MenuPage: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< 13) { item in
                    NavigationLink {
                        DetailsPage()

                    } label: {
                        ProductItem(product: Product(id: 1, name: "MoccaChino", price: 5.25))
                    }
                }
            }.navigationTitle("Products")
            Text("Hello, danger")
            
        }
    }
}

#Preview {
    MenuPage()
}
