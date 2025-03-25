//
//  CartPage.swift
//  CoffeeMaster
//
//  Created by MARK on 11/03/2025.
//

import SwiftUI

struct CartPage: View {
    @State var name: String = ""
    @State var phone: String = ""
    @State var orderConfirmed = false
    
    @EnvironmentObject var cartManager: CartManager
    
    
    var body: some View {
            
            NavigationView {
                if cartManager.cart.count == 0 {
                    Text("Your order is empty")
                        .navigationTitle("Your Order")
                } else {
                    List {
                        Section("ITEMS") {
                            ForEach(cartManager.cart, id:\.0.id) { item in
                                OrderItem()
                            }
                        }.listRowBackground(Color("Background"))
                                            
                        Section("YOUR DETAILS") {
                            VStack {
                                TextField("Your Name", text: $name)
                                    .textFieldStyle(.roundedBorder)
                                Spacer().frame(height: 20)
                                TextField("Your Phone #", text: $phone)
                                    .keyboardType(.phonePad)
                                    .textFieldStyle(.roundedBorder)
                            }.padding(.top)
                             .padding(.bottom)
                        }.listRowBackground(Color("Background"))
                        
                        Section() {
                            HStack {
                                Spacer()
                                Text("Total")
                                Spacer()
                                
                                Spacer()
                            }
                        }.listRowBackground(Color.clear)
                        
                        Section {
                            HStack {
                                Spacer()
                                Button("Place Order") {
                                    //TODO: Validation
                                    orderConfirmed = true
                                }
                                    .padding()
                                    .frame(width: 250.0)
                                    .background(Color("Alternative2"))
                                    .foregroundColor(Color.black)
                                    .cornerRadius(25)
                                    
                                Spacer()
                            }
                        }.listRowBackground(Color.clear)
                    }
                    .listSectionSeparatorTint(Color("AccentColor"))
                    .listStyle(.insetGrouped)
                    .navigationTitle("Your Order")
//                    .alert("Order", isPresented: $orderConfirmed, actions: {
//                        Button("OK", role: .cancel) {
//                            //TODO: send order
//                            orderConfirmed = false
//                            cartManager.clear()
//                        }
//                    }, message: {
//                        Text("Your order is being prepared.")
//                            .font(.title)
//                    })
                }
            }
        }}

#Preview {
    CartPage()
        .environmentObject(CartManager())
}
