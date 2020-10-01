//
//  WidgetView.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import Foundation
import UIKit

protocol WidgetView {
    var viewModel: WidgetViewModel { get }
    func setupWidget()
}
