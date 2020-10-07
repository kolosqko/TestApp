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
    
    @IBOutlet weak var widgetSuperView: UIView!
    
    
    func loadWidget(){
        
        guard var widget = viewModel?.widgetType.widgetView else {
            return
        }
        
        widget.viewModel = viewModel
        widget.delegate = delegate
        widget.setupWidget()
        self.widgetSuperView.addSubview(widget)
        widget.fillInParent()
        setupPaddings()
        self.widgetView = widget
    }
    
    private func setupPaddings() {
        guard
            let viewModel = viewModel,
            let leadingConstraint = widgetSuperView.constraints.first(where: {$0.firstAttribute == .leading}),
            let trailingConstraint = widgetSuperView.constraints.first(where: {$0.firstAttribute == .trailing})  else {
            return
        }
        leadingConstraint.constant = viewModel.widgetType.widgetLeftPaddingProportion * self.bounds.width
        trailingConstraint.constant = viewModel.widgetType.widjetRightPaddingProportion * self.bounds.width
        
    }

}
