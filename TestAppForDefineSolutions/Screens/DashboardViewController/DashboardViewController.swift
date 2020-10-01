//
//  DashboardViewController.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController, StoryboardInstantiable {

    @IBOutlet weak var dashboardCollectionView: UICollectionView!
    
    private var viewModel: DashboardViewModel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        registerReuseIdentifiers()
        dashboardCollectionView.dataSource = self
        

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    
    private func registerReuseIdentifiers() {
        let singleItemCellNib = UINib(
            nibName: WidgetType.singleItem.collectionViewCellReuseIdentifier,
            bundle: nil
        )
        dashboardCollectionView.register(
            singleItemCellNib,
            forCellWithReuseIdentifier: WidgetType.singleItem.collectionViewCellReuseIdentifier
        )
    }

}



extension DashboardViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.widgetsViewModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellViewModel = self.viewModel.widgetsViewModels[indexPath.item]
        let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: cellViewModel.widgetType.collectionViewCellReuseIdentifier,
                for: indexPath
            )
        return cell
        
    }
    
    
}
