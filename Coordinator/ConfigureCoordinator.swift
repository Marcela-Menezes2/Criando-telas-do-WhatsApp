//
//  ConfigureCoordinator.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 25/05/22.
//

import UIKit

class ConfigureCoordinator: Coordinator {
    let navigationController: UINavigationController
    let coordinatorViewModel: CoordinatorViewModel
    lazy var configureController: ConfigureController = {
        let view = ConfigureController()
        view.onSet = {
            self.startAddCategory()
        }
        
        view.tabBarItem.image = UIImage(systemName: "gear")
        view.tabBarItem.title = "Configurações"
        return view
    }()
    
    init(navigationController: UINavigationController,
         coordinatorViewModel: CoordinatorViewModel) {
        self.navigationController = navigationController
        self.coordinatorViewModel = coordinatorViewModel
    }
    
    func start() {
        
    }
    
    func startAddCategory() {
        let coordinator = AddConfigureCoordinator(navigationController: self.navigationController, coordinatorViewModel: self.coordinatorViewModel)
        coordinator.start()
    }
}

