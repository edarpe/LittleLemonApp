//
//  MenuItemView.swift
//  LittleLemon
//
//  Created by Edwin Perez on 12/08/24.
//

import SwiftUI

struct MenuItemView: View {
    
    let name: String
    let image: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
            
            
            Text(name)
                .font(.subheadline)
        }
    }
}

#Preview {
    MenuItemView(name: "Food 1", image: "food-placeholder")
}
