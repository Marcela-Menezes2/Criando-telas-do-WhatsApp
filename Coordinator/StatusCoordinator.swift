//
//  StatusCoordinator.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 25/05/22.
//

import UIKit

class StatusCoordinator: Coordinator {
    let navigationController: UINavigationController
    let coordinatorViewModel: CoordinatorViewModel
    lazy var statusController: StatusController = {
        let view = StatusController()
        view.onAddPencil = {
            self.startAddTransaction()
        }
        
        view.tabBarItem.image = UIImage(systemName: "circle.circle")
        view.tabBarItem.title = "Status"
        
        return view
    }()
    
    init(navigationController: UINavigationController,
         coordinatorViewModel: CoordinatorViewModel) {
        self.navigationController = navigationController
        self.coordinatorViewModel = coordinatorViewModel
    }
    
    func start() {
        
    }
    
    func startAddTransaction() {
        let coordinator = AddStatusCoordinator(navigationController: self.navigationController, coordinatorViewModel: self.coordinatorViewModel)
        coordinator.start()
    }
}


