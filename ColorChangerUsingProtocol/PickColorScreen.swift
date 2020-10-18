//
//  PickColorScreen.swift
//  ColorChangerUsingProtocol
//
//  Created by David U. Okonkwo on 10/16/20.
//

import UIKit

protocol ChangeColorProtocol {
    func changeColor(color: UIColor)
}

class PickColorScreen: UIViewController {
    var screenColorDelegate: ChangeColorProtocol?
    lazy var cyanButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .cyan
        button.setTitle("Select Cyan", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 5
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(selectColor), for: .touchUpInside)
        return button
    }()
    
    lazy var redButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Select Red", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 5
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(selectColor), for: .touchUpInside)
        return button
    }()
    
    @objc func selectColor(button: UIButton){
        screenColorDelegate?.changeColor(color: button.backgroundColor ?? UIColor())
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layouts()
        view.backgroundColor = .white
    }
    func layouts(){
        view.addSubview(cyanButton)
        view.addSubview(redButton)
        setConstraints()
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            cyanButton.heightAnchor.constraint(equalToConstant: 70),
            cyanButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            cyanButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            cyanButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            
            redButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            redButton.heightAnchor.constraint(equalToConstant: 70),
            redButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            redButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
        ])
    }
}
