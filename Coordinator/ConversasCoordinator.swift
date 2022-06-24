//
//  ConversasCoordinator.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 25/05/22.
//

import UIKit

class ConversasCoordinator: Coordinator {
    let navigationController: UINavigationController
    let coordinatorViewModel: CoordinatorViewModel
    lazy var conversasViewController: ConversasViewController = {
        let view = ConversasViewController()
        view.onAddSelect = {
            self.startAddCategory()
        }
        
        view.tabBarItem.image = UIImage(systemName: "message")
        view.tabBarItem.title = "Conversas"
        
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
        let coordinator = AddConversasCoordinator(navigationController: self.navigationController, coordinatorViewModel: self.coordinatorViewModel)
        coordinator.start()
    }
}

