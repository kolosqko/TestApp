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
    
    var widgetView: (UIView & WidgetView)? {
        let xibIdentifier: String? = {
            switch self {
            case .singleItem: return "SingleItemWidgetView"
            case .collection: return "CollectionWidgetView"
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
    
    var widgetProportions: CGFloat {
        switch self {
        case .singleItem: return 685 / 1125
        case .collection: return 764.8 / 1125
        }
    }
    
    var widgetLeftPaddingProportion: CGFloat {
        switch self {
        case .singleItem, .collection: return 48 / 1125
        }
    }
    
    var widjetRightPaddingProportion: CGFloat {
        switch self {
        case .singleItem: return 48 / 1125
        case .collection: return 0
    }
    }
}
