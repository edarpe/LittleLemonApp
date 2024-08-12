//
//  MenuViewViewModel.swift
//  LittleLemon
//
//  Created by Edwin Perez on 12/08/24.
//

import Foundation

class MenuViewViewModel: ObservableObject{
    
    @Published var presentingModal: Bool = false
    

    
    
    var foods: [MenuItem]{
        return menuItems.filter{
            $0.category == .food
        }
    }
    
    var drinks: [MenuItem]{
        return menuItems.filter{
            $0.category == .drink
        }
    }
    
    var desserts: [MenuItem]{
        return menuItems.filter{
            $0.category == .dessert
        }
    }
    
}
