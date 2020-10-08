//
//  CollectionWidgetViewCollectionViewCell.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import UIKit

class CollectionWidgetViewCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    var viewModel: Book? {
        didSet {
            setupCell()
        }
    }
    
    private func setupCell() {
        guard let viewModel = viewModel else {
            return
        }
        authorLabel.text = "by \(viewModel.author)"
        titleLabel.text = viewModel.title
        posterImageView.image = viewModel.poster
    }
}
