//
//  SingleItemWidgetView.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import UIKit

class SingleItemWidgetView: UIView, WidgetView {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var viewModel: WidgetViewModel? {
        didSet {
            setupWidget()
        }
    }
    
    func setupWidget() {
        guard let viewModel = viewModel as? SingleItemWidgetViewModel else {
            return
        }
        titleLabel.text = viewModel.title
        imageView.image = viewModel.image
        imageView.contentMode = .scaleToFill
    }

}
