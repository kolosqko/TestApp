//
//  DashboardViewController.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import UIKit

protocol DashboardViewControllerDelegate {
    func showBookInfo(book: Book)
}


class DashboardViewController: UIViewController, StoryboardInstantiable {

    @IBOutlet weak var dashboardCollectionView: UICollectionView!
    
    private let cellIdentifier = "DashboardCollectionViewCell"
    
    private var viewModel: DashboardViewModel? = DashboardViewModel()
    
    var delegate: DashboardViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerReuseIdentifiers()
        dashboardCollectionView.dataSource = self
        dashboardCollectionView.delegate = self


    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    
    private func registerReuseIdentifiers() {
        let singleItemCellNib = UINib(
            nibName: cellIdentifier,
            bundle: nil
        )
        dashboardCollectionView.register(
            singleItemCellNib,
            forCellWithReuseIdentifier: cellIdentifier
        )
    }

}



extension DashboardViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let count = viewModel?.widgetsViewModels.count else {
            return 0
        }
        return count
    }
    

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: cellIdentifier,
                for: indexPath
            )
        if
            let cell = cell as? DashboardCollectionViewCell,
            let viewModel = viewModel?.widgetsViewModels[indexPath.item] {
            cell.viewModel = viewModel
            cell.delegate = self
            
            cell.loadWidget()
            return cell
        }
        
        
        
        return cell
        
    }
    
    
}


extension DashboardViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        guard let cellViewModel = self.viewModel?.widgetsViewModels[indexPath.item] else {
            return CGSize.zero
        }
        let width = view.bounds.width
        let height = width * cellViewModel.widgetType.widgetProportions
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        let width = view.bounds.width
        
        // 60 / 685 - approximate proportions of spacing in example
        let spacing = (WidgetType.singleItem.widgetProportions * width) * ( Constants.widgetSpacing )
        return spacing
    }
}



extension DashboardViewController: WidgetViewDelegate {
    
    func bookWasSelected(book: Book) {
        self.delegate?.showBookInfo(book: book)
    }
}
