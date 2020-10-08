//
//  CollectionWidgetView.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import UIKit



class CollectionWidgetView: UIView, WidgetView  {
    
    private let identifier = "CollectionWidgetViewCollectionViewCell"
    
    var viewModel: WidgetViewModel? {
        didSet {
            setupWidget()
        }
    }
    
    var delegate: WidgetViewDelegate?
    
    func setupWidget() {
        registerReusebleCell()
        collectionView.dataSource = self
        collectionView.delegate = self
        titleLabel.text = viewModel?.title
        
    }
    

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    private func registerReusebleCell() {
        let CollectionWidgetViewCollectionViewCellNib = UINib(
            nibName: identifier,
            bundle: nil
        )
        collectionView.register(
            CollectionWidgetViewCollectionViewCellNib,
            forCellWithReuseIdentifier: identifier
        )
    }
    

}



extension CollectionWidgetView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let viewModel = viewModel as? CollectionWidgetViewModel else {
            return 0
        }
        return viewModel.items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        if
            let cell = cell as? CollectionWidgetViewCollectionViewCell,
            let viewModel = viewModel as? CollectionWidgetViewModel
        {
            cell.viewModel = viewModel.items[indexPath.item]
            return cell
        }
        return cell
    }
    
    
}




extension CollectionWidgetView: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = collectionView.bounds.height
        let width = height / Constants.collectionWidgetSpacing
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard  let book = (viewModel as? CollectionWidgetViewModel)?.items[indexPath.item] else {
            return
        }
        self.delegate?.bookWasSelected(book: book)
    }
    
}
