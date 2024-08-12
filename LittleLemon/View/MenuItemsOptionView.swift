//
//  MenuSettingsView.swift
//  LittleLemon
//
//  Created by Edwin Perez on 12/08/24.
//

import SwiftUI

struct MenuItemsOptionView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List {
                    Section(header: Text("SELECTED CATEGORIES")) {
                        Text("Food")
                        Text("Drink")
                        Text("Dessert")
                    }
                    
                    Section(header: Text("SORT BY")) {
                        Text("Most Popular")
                        Text("Price ")
                        Text("A-Z")
                    }
                }
                .listStyle(.grouped)
                .navigationTitle("Filter")
            }
            .frame(width: .infinity)
            .toolbar {
                Button {
                    dismiss()
                }label: {
                    Text("Done")
                }
            }
        }
        
        
    }
}

#Preview {
    MenuItemsOptionView()
}
