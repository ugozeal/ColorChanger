//
//  ViewController.swift
//  ColorChangerUsingProtocol
//
//  Created by David U. Okonkwo on 10/16/20.
//

import UIKit

class DisplayColorViewController: UIViewController, ChangeColorProtocol {
    func changeColor(color: UIColor) {
        view.backgroundColor = color
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBar()
        view.backgroundColor = .white
    }

    func setNavigationBar() {
        navigationItem.title = "Color Screen"
        let addButton = UIButton(type: .custom)
        addButton.setTitle("Pick Color", for: .normal)
        addButton.setTitleColor(.black, for: .normal)
        addButton.addTarget(self, action: #selector(colorScreen), for: .touchUpInside)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: addButton)
    }
    
    @objc func colorScreen() {
        let addTodoScreen = PickColorScreen()
        addTodoScreen.screenColorDelegate = self
        navigationController?.pushViewController(addTodoScreen, animated: true)
    }
}

