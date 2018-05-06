//
//  UIViewController+Extensions.swift
//  toy-loading-child-controller
//
//  Created by Faiz Mokhtar on 06/05/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func add(_ child: UIViewController) {
        addChildViewController(child)
        view.addSubview(child.view)
        child.didMove(toParentViewController: self)
    }

    func remove() {
        guard parent != nil else { return }
        willMove(toParentViewController: nil)
        removeFromParentViewController()
        view.removeFromSuperview()
    }
}
