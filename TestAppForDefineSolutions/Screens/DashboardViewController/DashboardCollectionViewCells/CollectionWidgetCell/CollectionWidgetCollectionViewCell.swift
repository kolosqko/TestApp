//
//  CollectionWidgetCollectionViewCell.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import UIKit

class CollectionWidgetCollectionViewCell: UICollectionViewCell {
    
    
    private var viewModel: CollectionWidgetViewModel = CollectionWidgetViewModel(title: "") {
        didSet {
            
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
