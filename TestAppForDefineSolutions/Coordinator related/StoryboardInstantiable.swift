//
//  StoryboardInstantiable.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 9/30/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import Foundation

import UIKit

protocol StoryboardInstantiable: NSObjectProtocol {
    static func instantiateViewController<T>(_ bundle: Bundle?) -> T
    static var defaultFileName: String { get }
}

extension StoryboardInstantiable where Self: UIViewController {
    
    static var defaultFileName: String {
        return NSStringFromClass(Self.self).components(separatedBy: ".").last!
    }
    
    static func instantiateViewController<T>(_ bundle: Bundle? = nil) -> T {
        let fileName = defaultFileName
        let sb = UIStoryboard(name: fileName, bundle: bundle)
        return sb.instantiateInitialViewController() as! T
    }
}
