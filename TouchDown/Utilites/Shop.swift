//
//  Shop.swift
//  TouchDown
//
//  Created by Zardasht on 8/9/22.
//

import Foundation

class Shop: ObservableObject {
    
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product?
}
