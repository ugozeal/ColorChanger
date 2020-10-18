//
//  MainNavigationController.swift
//  ColorChangerUsingProtocol
//
//  Created by David U. Okonkwo on 10/16/20.
//

import UIKit

class MainNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let colorViewController = DisplayColorViewController()
        viewControllers = [colorViewController]
    }
}
