//
//  AppAppearance.swift
//  ExampleMVVM
//
//  Created by Oleh on 23.09.18.
//

import Foundation
import UIKit

final class AppAppearance {
    
    static func setupAppearance() {
        UINavigationBar.appearance().barTintColor = .tertiarySystemBackground
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.label]
    }
}

//extension UINavigationController {
//    @objc override open var preferredStatusBarStyle: UIStatusBarStyle {
//        return .lightContent
//    }
//}
