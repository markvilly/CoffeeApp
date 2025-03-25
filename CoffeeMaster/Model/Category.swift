//
//  Category.swift
//  CoffeeMaster
//
//  Created by MARK on 12/03/2025.
//

import Foundation

struct Category: Decodable, Identifiable{
    var name: String
    var product: [Product]
    var id: String {
        return self.name
    }
}
