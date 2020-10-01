//
//  SingleItemWidgetCollectionViewCell.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import UIKit

class SingleItemWidgetCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    private var viewModel: SingleItemWidgetViewModel = SingleItemWidgetViewModel(title: "") {
        didSet {
            self.titleLabel?.text = viewModel.title
            self.imageView? = UIImageView(image: viewModel.image)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
