//
//  BookInfoCoordinator.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/6/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import Foundation
import  UIKit

class BookInfoCoordinator: Coordinator {
    
    private let presenter: UINavigationController
    private let bookInfoViewControllerViewModel: Book
    private var bookInfoViewController: BookInfoViewController?
    
    init(presenter: UINavigationController, book: Book) {
        self.presenter = presenter
        self.bookInfoViewControllerViewModel = book
    }
    
    func start() {
        let bookInfoViewController: BookInfoViewController = BookInfoViewController.instantiateViewController()
        bookInfoViewController.viewModel = bookInfoViewControllerViewModel
        presenter.pushViewController(bookInfoViewController, animated: true)
        self.bookInfoViewController = bookInfoViewController
    }
}
