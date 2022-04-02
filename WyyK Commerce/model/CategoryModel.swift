//
//  CategoryModel.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import Foundation


struct Category: Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
}
