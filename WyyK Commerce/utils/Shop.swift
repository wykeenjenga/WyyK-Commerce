//
//  Shop.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import Foundation

class Shop: ObservableObject { //allows instances of class to be used everywhere
    
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
}
