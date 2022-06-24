//
//  AddStatusCoordinator.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 26/05/22.
//

import UIKit

class AddStatusCoordinator: Coordinator {
    let navigationController: UINavigationController
    let coordinatorViewModel: CoordinatorViewModel
    
    init(navigationController: UINavigationController, coordinatorViewModel: CoordinatorViewModel) {
        self.navigationController = navigationController
        self.coordinatorViewModel = coordinatorViewModel
    }
    
    func start() {
        let viewController = AddStatusViewController()
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
