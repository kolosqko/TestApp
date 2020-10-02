//
//  CollectionWidgetViewModel.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import Foundation
import UIKit

struct CollectionWidgetViewModel: WidgetViewModel {
    var title: String
    
    var widgetType: WidgetType = .collection
    
    let items: [Book]
    
    init(title: String) {
        self.title = title
        self.items = []
    }
    
    init(title: String, items: [Book]) {
        self.title = title
        self.items = items
    }
    
    init() {
        self.title = "testing"
        let item = Book(title: "book", author: "author", poster: UIImage(named: "FavoritesTabBarIcon"))
        self.items = [item,item,item]
    }
    
    func widgetProportions() -> CGFloat {
        return 0.7
    }
}



struct Book {
    let title: String
    let author: String
    let poster: UIImage?
    
    init(title: String, author: String, poster: UIImage?) {
        self.title = title
        self.author = author
        self.poster = poster
    }
}
