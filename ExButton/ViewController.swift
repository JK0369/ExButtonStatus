//
//  ViewController.swift
//  ExButton
//
//  Created by 김종권 on 2023/05/03.
//

import UIKit

class ViewController: UIViewController {
    private let button: UIButton = {
        let button = UIButton()
        
        button.setTitle("버튼", for: .normal)
        button.setTitle("선택됨", for: .selected)
        
        button.setTitleColor(.blue, for: .normal)
        button.setTitleColor(.systemBlue, for: [.normal, .highlighted])
        
        button.setTitleColor(.red, for: .selected)
        button.setTitleColor(.systemRed, for: [.selected, .highlighted])
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    @objc func tap() {
        button.isSelected.toggle()
        
    //        let color = button.isSelected ? UIColor.systemRed : .systemBlue
    //        button.setTitleColor(color, for: .highlighted)
    }
}
