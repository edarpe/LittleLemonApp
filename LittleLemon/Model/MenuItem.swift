//
//  MenuItem.swift
//  LittleLemon
//
//  Created by Edwin Perez on 12/08/24.
//

import Foundation

protocol MenuItemProtocol: Identifiable{
    var id: UUID {get}
    var price: Double {get}
    var title: String {get}
    var category: MenuCategory {get}
    var orders : Int {get set}
    var Price: Int {get set}
    var ingredient: [Ingredient] {get set}
}

struct MenuItem: MenuItemProtocol{
    let id: UUID
    let price: Double
    let title: String
    let category: MenuCategory
    
    var orders: Int
    var Price: Int
    var ingredient: [Ingredient]
}


let menuItems: [MenuItem] = [
//        Foods
    .init(id: UUID(), price: 10, title: "Food 1", category: .food, orders: 20, Price: 100, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Food 2", category: .food, orders: 12, Price: 20, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Food 3", category: .food, orders: 44, Price: 50, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Food 4", category: .food, orders: 100, Price: 22, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Food 5", category: .food, orders: 20, Price: 25, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Food 6", category: .food, orders: 50, Price: 40, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Food 7", category: .food, orders: 14, Price: 50, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Food 8", category: .food, orders: 19, Price: 20, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Food 9", category: .food, orders: 113, Price: 50, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Food 10", category: .food, orders: 24, Price: 20, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Food 11", category: .food, orders: 10, Price: 60, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Food 12", category: .food, orders: 2, Price: 25, ingredient: [.spinach, .broccoli]),
//        drinks
    .init(id: UUID(), price: 10, title: "Drink 1", category: .drink, orders: 2, Price: 10, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Drink 2", category: .drink, orders: 2, Price: 10, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Drink 3", category: .drink, orders: 2, Price: 10, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Drink 4", category: .drink, orders: 2, Price: 10, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Drink 5", category: .drink, orders: 2, Price: 10, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Drink 6", category: .drink, orders: 2, Price: 10, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Drink 7", category: .drink, orders: 2, Price: 10, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Drink 8", category: .drink, orders: 2, Price: 10, ingredient: [.spinach, .broccoli]),
//        Dessert
    .init(id: UUID(), price: 10, title: "Dessert 1", category: .dessert, orders: 2, Price: 10, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Dessert 2", category: .dessert, orders: 2, Price: 10, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Dessert 3", category: .dessert, orders: 2, Price: 10, ingredient: [.spinach, .broccoli]),
    .init(id: UUID(), price: 10, title: "Dessert 4", category: .dessert, orders: 2, Price: 10, ingredient: [.spinach, .broccoli])
    
]
