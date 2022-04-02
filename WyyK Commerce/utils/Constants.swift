//
//  Constants.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import SwiftUI


//data
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")

let sampleProduct: Product = products[0]


//color
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray5)



//layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}


//ux


//API


//Image
let logo: String = String("logo-lineal")
let logoDark: String = String("logo-dark")

//font


//String


//misc
