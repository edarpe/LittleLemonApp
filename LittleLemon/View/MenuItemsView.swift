//
//  ContentView.swift
//  LittleLemon
//
//  Created by Edwin Perez on 12/08/24.
//

import SwiftUI

struct MenuItemsView: View {
    
    private let adaptiveColumn = [
            GridItem(.adaptive(minimum: 100))
        ]
    
    @ObservedObject var viewModel = MenuViewViewModel()
    
    @State private var showDetail: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                ScrollView{
                    LazyVGrid(columns: adaptiveColumn, alignment: .leading, spacing: 16){
                        Section(header: Text("Food").font(.title).bold()){
                            ForEach(viewModel.foods) { food in
                                NavigationLink {
                                    MenuItemDetailsView(menuItem: food)
                                }label: {
                                    MenuItemView(name: food.title, image: "food-placeholder")
                                }
                            }
                            
                            Section(header: Text("Drink").font(.title).bold()){
                                ForEach(viewModel.drinks) { drink in
                                    NavigationLink {
                                        MenuItemDetailsView(menuItem: drink)
                                    }label: {
                                        MenuItemView(name: drink.title, image: "food-placeholder")
                                    }
                                }
                            }
                            
                            Section(header: Text("Dessert").font(.title).bold()){
                                ForEach(viewModel.desserts) { dessert in
                                    NavigationLink {
                                        MenuItemDetailsView(menuItem: dessert)
                                    }label: {
                                        MenuItemView(name: dessert.title, image: "food-placeholder")
                                    }
                                }
                            }
                        }
                    }
                }
                
            }
            .toolbar {
                Button {
                    showDetail.toggle()
                } label: {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                }
                .sheet(isPresented: $showDetail) {
                    MenuItemsOptionView()
                }
            }
            .padding(.horizontal, 16)
            .navigationTitle("Menu")
        }
        
    }
}

#Preview {
    MenuItemsView()
}
