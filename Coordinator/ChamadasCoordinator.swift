//
//  ChamadasCoordinator.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 25/05/22.
//

import UIKit

class ChamadasCoordinator: Coordinator {
    let navigationController: UINavigationController
    let coordinatorViewModel: CoordinatorViewModel
    lazy var chamadasController: ChamadasController = {
        let view = ChamadasController()
        view.onAddTransaction = {
            self.startAddTransaction()
        }
        
        view.tabBarItem.image = UIImage(systemName: "phone")
        view.tabBarItem.title = "Chamadas"
        
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
        
    }
}
