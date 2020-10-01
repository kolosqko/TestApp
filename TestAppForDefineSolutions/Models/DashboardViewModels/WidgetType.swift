//
//  WidgetType.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import Foundation
import UIKit


enum WidgetType {
    case singleItem
    case collection
    
    var collectionViewCellReuseIdentifier: String {
        switch self {
        case .singleItem:
            return "SingleItemWidgetCollectionViewCell"
        default:
            return ""
        }
    }
    
    var widgetView: (UIView & WidgetView)? {
        let xibIdentifier: String? = {
            switch self {
            case .singleItem: return "SingleItemWidgetView"
            case .collection: return nil
            }
        }()
        guard let identifier = xibIdentifier else {
            return nil
        }
        
        guard let view = Bundle.main.loadNibNamed(identifier, owner: nil, options: nil)?.first else {
            return nil
        }
        return view as? (UIView & WidgetView)
    }
}
