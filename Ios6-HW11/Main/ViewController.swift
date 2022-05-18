//
//  ViewController.swift
//  Ios6-HW11
//
//  Created by Александр Алешин on 18.05.2022.
//

import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
      }
    }

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.rgb(red: 25, green: 25, blue: 27)
        // Do any additional setup after loading the view.
    }


}

