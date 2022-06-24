//
//  TabBarCoordinator.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 25/05/22.
//

import UIKit

class TabBarCoordinator: Coordinator {
    let navigationController: UINavigationController
    let coordinatorViewModel: CoordinatorViewModel
    
    init(navigationController: UINavigationController,
         coordinatorViewModel: CoordinatorViewModel) {
        self.navigationController = navigationController
        self.coordinatorViewModel = coordinatorViewModel
    }
    
    func start() {
        let tabBarController = HomeTabBarController()
        
        let statusCoordinator = StatusCoordinator(navigationController: self.navigationController, coordinatorViewModel: self.coordinatorViewModel)
        
        let chamadasCoordinator = ChamadasCoordinator(navigationController: self.navigationController, coordinatorViewModel: self.coordinatorViewModel)
        
        let cameraCoordinator = CameraCoordinator(navigationController: self.navigationController, coordinatorViewModel: self.coordinatorViewModel)
        
        let conversasCoordinator = ConversasCoordinator(navigationController: self.navigationController, coordinatorViewModel: self.coordinatorViewModel)
        
        let configureCoordinator = ConfigureCoordinator(navigationController: self.navigationController, coordinatorViewModel: self.coordinatorViewModel)
        
        tabBarController.setViewControllers([statusCoordinator.statusController,                                             chamadasCoordinator.chamadasController, cameraCoordinator.cameraController, conversasCoordinator.conversasViewController, configureCoordinator.configureController], animated: false)
        
        self.navigationController.pushViewController(tabBarController, animated: true)
    }
}
