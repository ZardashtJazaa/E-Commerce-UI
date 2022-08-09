//
//  Constance.swift
//  TouchDown
//
//  Created by Zardasht on 8/7/22.
//

import SwiftUI

//Data

let players: [Player] = Bundle.main.decode("player.json")
let categories : [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let Brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct = products[0]

//Color
let ColorGold : Color  = Color("GoldColor")
let backgroundColor: Color = Color("ColorBackground")
let colorGray: Color = Color(uiColor: .systemGray4)

//Layouy

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10

var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

//UX
let feedBack = UIImpactFeedbackGenerator(style: .medium)
//API

//IMAGE

//FONT

//STRING

//MICE
