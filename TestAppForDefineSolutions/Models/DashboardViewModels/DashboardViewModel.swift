//
//  DashboardViewModel.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import Foundation
import UIKit

class DashboardViewModel{
    let widgetsViewModels: [WidgetViewModel]
    
    init(widgets: [WidgetViewModel]) {
        self.widgetsViewModels = widgets
    }
    
    init() {
        self.widgetsViewModels = DashboardViewModel.createViewModel()
    }
    
    // method to create view models for demo
    static private func createViewModel() -> [WidgetViewModel] {
        let discoverSWidget = SingleItemWidgetViewModel(title: "Discover", image: UIImage(named: "TheLightBetweenOceansImage")!)
        
        let book1 = Book(title: "Conversations with friends", author: "Sally Ronney", poster: UIImage(named: "ConversationsWithFriendsImage")!)
        let book2 = Book(title: "This Is How It Always Is", author: "Laurie Frankel", poster: UIImage(named: "ThisIsHowItAlwaysIsImage")!)
        let book3 = Book(title: "A Teespoon Of Earth And See", author: "Dina Nayeri", poster: UIImage(named: "ATeespoonOfEarthAndSeeImage")!)
        let book4 = Book(title: "Griff Cottage", author: "Hassan Ali Toptas", poster: UIImage(named: "GriffCottageImage")!)
        let book5 = Book(title: "Shadowless", author: "Gale Godwin", poster: UIImage(named: "ShadowlessImage")!)
        let book6 = Book(title: "Eat Vegan", author: "Shannon Martinez", poster: UIImage(named: "EatVeganImage")!)

        let popularWidget = CollectionWidgetViewModel(title: "Popular", items: [book1, book2, book3])
        let recommendedWidget = CollectionWidgetViewModel(title: "Recommended", items: [book4, book5, book6])

        return [discoverSWidget, popularWidget, recommendedWidget]
    }
}





