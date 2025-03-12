//
//  OffersPage.swift
//  CoffeeMaster
//
//  Created by MARK on 10/03/2025.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView {
            List {
                Offer(title: "The Early Bird", description: "10% off. Offer valid from 6am to 9am.")
                Offer(title: "Onboarder", description: "20% off on your first order.")
                Offer(title: "Parting Gift", description: "20% on off on your last day at work.")
            }.navigationTitle("Offers")
        }
    }
}

#Preview {
    OffersPage()
}
