//
//  Offer.swift
//  CoffeeMaster
//
//  Created by MARK on 10/03/2025.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""

    var body: some View {
        ZStack {
            Image("BackgroundPattern")
                .frame(maxWidth: .infinity, maxHeight: 200)
                .clipped()
            VStack {
                
                Text(title)
                    .padding(19)
                    .font(.title)
                    .background(Color("CardBackground"))
                Text(description)
                    .padding(24)
                    .font(.caption)
                    .background(Color("CardBackground"))
            }
        }
        
    }
}

#Preview {
    Offer(title: "Mark Phucks", description: "Like a turtle")
}
