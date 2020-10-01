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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        guard let widget = self.widgetView else {
            return
        }
        self.addSubview(widget)
        widget.fillInParent()
    }

}
