//
//  DetailsPage.swift
//  CoffeeMaster
//
//  Created by MARK on 11/03/2025.
//

import SwiftUI

struct DetailsPage: View {
    var product = "Coffee"
    @State var quantity = 1
    var body: some View {
        ScrollView {
            Image("Dummy Image")
                .cornerRadius(5)
                .frame(maxWidth: .infinity, idealHeight: 182, maxHeight: 150)
                .padding(.top, 32)
            Text("Product")
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            HStack {
                Text("$ 4.25 ea")
                Stepper(value: $quantity, in:1...10){}
            }
            .frame(maxWidth: .infinity)
            .padding(30)
            Text("Subtotal $4.25")
                .bold()
                .padding(12)
            Button("Add \(quantity) to Cart"){
                // TODO
            }
            .padding(8)
            .frame(maxWidth: 250.0)
            .background(Color("Alternative2"))
            .foregroundStyle(Color.black)
            .cornerRadius(25)
        }
        .navigationTitle(product )
    }
}

#Preview {
    DetailsPage()
}
