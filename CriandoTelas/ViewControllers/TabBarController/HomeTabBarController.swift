//
//  ViewController.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 23/03/22.
//

import UIKit

class HomeTabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: animated)
        
        self.tabBar.backgroundColor = .white
        self.tabBar.isTranslucent = false
    }
}
