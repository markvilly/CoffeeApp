//
//  MenuPage.swift
//  CoffeeMaster
//
//  Created by MARK on 11/03/2025.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menuManager.menu) { category in Text(category.name)
                    
                    ForEach(category.product) {
                        product in
                        NavigationLink {
                            DetailsPage()
                        } label: {
                            ProductItem(product:product)
                        }
                    }
                }
            }.navigationTitle("Products")
        }
    }
}

#Preview {
    MenuPage()
        .environmentObject(MenuManager())
}
