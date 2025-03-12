//
//  Production.swift
//  CoffeeMaster
//
//  Created by MARK on 11/03/2025.
//

import SwiftUI

struct ProductItem: View {
    var product: Product
    var body: some View {
        VStack {
            AsyncImage(url: product.imageURL)
                .frame(width: 300, height: 150)
                .background(Color("AccentColor"))
            HStack {
                VStack(alignment: .leading){
                    Text(product.name)
                        .font(.title)
                        .bold()
                    Text("$ \(product.price)")
                        .font(.caption)
                    
                }.padding(8)
                Spacer()
            }
        }
        .background(Color("SurfaceBackground"))
        .cornerRadius(10)
        .padding()
        
    }
}

#Preview {
    ProductItem(product: Product(id: 1, name: "MoccaChino", price: 5.59, image: ""))
}
