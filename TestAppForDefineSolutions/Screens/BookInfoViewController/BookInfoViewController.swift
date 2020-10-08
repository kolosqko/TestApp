//
//  BookInfoViewController.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/6/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import UIKit

class BookInfoViewController: UIViewController, StoryboardInstantiable {
    @IBOutlet weak var bookCoverImageView: UIImageView!
    
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var authorNameLabel: UILabel!
    
    var viewModel: Book?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    private func setupViewController() {
        
        
        bookCoverImageView.image = viewModel?.poster
        bookTitleLabel.text = viewModel?.title
        authorNameLabel.text = "by \(viewModel?.author ?? "")"
    }
}
