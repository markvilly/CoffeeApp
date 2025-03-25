//
//  MenuManager.swift
//  CoffeeMaster
//
//  Created by MARK on 12/03/2025.
//

import Foundation
import Alamofire

class MenuManager: ObservableObject {
    @Published var menu: [Category] = []
    
    // Automatically mapping it to the data model
    init() {
        refreshItemsFromNetwork()
    }
    
    // go to the network download the files
    func refreshItemsFromNetwork() {
        AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
            .responseDecodable(of: [Category].self) { response in
                if let menuFromNetwork = response.value {
                    print(response.value)
                    self.menu = menuFromNetwork
                }
            }
    }
}

