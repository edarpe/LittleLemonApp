//
//  MenuItemDetailsView.swift
//  LittleLemon
//
//  Created by Edwin Perez on 12/08/24.
//

import SwiftUI

struct MenuItemDetailsView: View {
    
    let menuItem: MenuItem
    
    var body: some View {
        VStack {
            Image("LittleLemonlogo")
                .resizable()
                .scaledToFit()
                .frame(width: 250)
            
            Text("Price: ")
                .font(.title2)
                .bold()
            
            Text("\(menuItem.Price)")
            
            Text("Ordered: ")
                .font(.title2)
                .bold()
            
            Text("\(menuItem.orders)")
            
            Text("Ingredients: ")
                .font(.title2)
                .bold()
            
            VStack {
                ForEach(menuItem.ingredient, id: \.self) { ingredient in
                    Text(ingredient.rawValue)
                }
            }
        }
        .navigationTitle(menuItem.title)
    }
}

#Preview {
    MenuItemDetailsView(menuItem: MenuItem(id: UUID(), price: 10.0, title: "Food", category: .food, orders: 2, Price: 10, ingredient: [.spinach, .broccoli]))
}
