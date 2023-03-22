//
//  AppConfig.swift
//  NewStore
//
//  Created by Михаил Супрун on 22.03.2023.
//

import Foundation


struct AppConfig: Codable{
    
    let productList:ProductList
}
struct ProductList: Codable{
       let pizzaList: [Pizza]
       let rollList: [Rolls]
   }
