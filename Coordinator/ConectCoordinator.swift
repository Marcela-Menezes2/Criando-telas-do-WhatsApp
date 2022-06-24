//
//  ConectCoordinator.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 27/05/22.
//

import UIKit

class ConectCoordinator: Coordinator {
    let navigationController: UINavigationController
    let coordinatorViewModel: CoordinatorViewModel
    
    init(navigationController: UINavigationController, coordinatorViewModel: CoordinatorViewModel) {
        self.navigationController = navigationController
        self.coordinatorViewModel = coordinatorViewModel
    }
    
    func start() {
        let viewController = ConectViewController()
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
