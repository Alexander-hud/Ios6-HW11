//
//  ViewController.swift
//  Ios6-HW11
//
//  Created by Александр Алешин on 18.05.2022.
//

import UIKit
import SwiftUI
extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
      }
    }

class ViewController: UIViewController {
    
    private lazy var image: UIImageView = {
        var image = UIImageView(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        image.image = UIImage(named: "profile")
        image.layer.borderWidth = 1
        image.layer.masksToBounds = false
        image.layer.borderColor = UIColor.black.cgColor
        image.layer.cornerRadius = image.frame.height/2
        image.clipsToBounds = true
        return image
    }()
    
    private lazy var label: UILabel = {
        var label = UILabel()
        label.text = "Александр Алёшин"
        label.textColor = .white
        return label
    }()
    
    private lazy var button: UIButton = {
        var button = UIButton()
        button.tintColor = .red
        button.setTitle("Нажми на меня", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHierarchy()
        setupLayout()
        setupVIew()
    }
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        view.addSubview(label)
        view.addSubview(button)
        view.addSubview(image)
    }
    
    private func setupLayout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.center = CGPoint(x: 320, y: 50)
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 240).isActive = true
        
        
        image.translatesAutoresizingMaskIntoConstraints = true
        image.center = CGPoint(x: 100, y: 150)
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        
    }
    
    private func setupVIew() {
        self.view.backgroundColor = UIColor.rgb(red: 25, green: 25, blue: 27)
    }
    
    // MARK: - Actions

    @objc private func buttonAction() {
        // TODO: - Add actions
    }
}

