
//
//  WidgetViewModel.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import Foundation
import UIKit

protocol WidgetViewModel{
    var title: String { get }
    var widgetType: WidgetType { get }
    func widgetHeight() -> CGFloat
}
