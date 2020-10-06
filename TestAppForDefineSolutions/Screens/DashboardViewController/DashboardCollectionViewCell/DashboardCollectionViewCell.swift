//
//  DashboardCollectionViewCell.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import UIKit

class DashboardCollectionViewCell: UICollectionViewCell {
    
    private var widgetView: (UIView & WidgetView)?
    var viewModel: WidgetViewModel? 
    var delegate: WidgetViewDelegate?
    
    
    
    func loadWidget(){
        
        guard var widget = viewModel?.widgetType.widgetView else {
            return
        }
        
        widget.viewModel = viewModel
        widget.delegate = delegate
        widget.setupWidget()
        self.addSubview(widget)
        widget.fillInParent()
        self.widgetView = widget
    }

}
