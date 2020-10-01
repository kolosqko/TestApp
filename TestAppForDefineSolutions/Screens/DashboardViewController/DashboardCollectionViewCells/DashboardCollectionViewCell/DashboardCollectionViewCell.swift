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
    var viewModel: WidgetViewModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        guard var widget = self.widgetView, let viewModel = self.viewModel else {
            return
        }
        widget.viewModel = viewModel
        widget.setupWidget()
        self.addSubview(widget)
        widget.fillInParent()
    }

}
