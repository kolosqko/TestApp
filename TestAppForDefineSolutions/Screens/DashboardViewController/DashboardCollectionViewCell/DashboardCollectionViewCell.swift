//
//  DashboardCollectionViewCell.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import UIKit

class DashboardCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var view: UIView!
    
    private var widgetView: (UIView & WidgetView)?
    var viewModel: WidgetViewModel? {
        didSet {
            loadWidget()
        }
    }
    
    
    
    private func loadWidget(){
        guard let viewModel = self.viewModel else {
            return
        }
        
        guard var widget = viewModel.widgetType.widgetView else {
            return
        }
        
        widget.viewModel = viewModel
        widget.setupWidget()
        self.addSubview(widget)
        widget.fillInParent()
        self.widgetView = widget
    }

}
