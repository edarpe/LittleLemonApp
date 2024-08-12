//
//  FilterValues.swift
//  LittleLemon
//
//  Created by Edwin Perez on 12/08/24.
//

import Foundation

enum MenuCategory: String, CaseIterable{
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
}

enum SortBy: String, CaseIterable{
    case popular = "Most Popular"
    case price = "Price $-$$$"
    case alphabet = "A-Z"
 }
