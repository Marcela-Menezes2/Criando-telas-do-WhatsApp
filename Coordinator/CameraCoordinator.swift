//
//  CameraCoordinator.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 25/05/22.
//

import Foundation
import UIKit

class CameraCoordinator: Coordinator {
    let navigationController: UINavigationController
    let coordinatorViewModel: CoordinatorViewModel
    lazy var cameraController: CameraController = {
        let view = CameraController()
        view.onAddTransaction = {
            
        }
        
        view.tabBarItem.image = UIImage(systemName: "camera")
        view.tabBarItem.title = "Camera"
        
        return view
    }()
    
    init(navigationController: UINavigationController,
         coordinatorViewModel: CoordinatorViewModel) {
        self.navigationController = navigationController
        self.coordinatorViewModel = coordinatorViewModel
    }
    
    func start() {
        
    }
    
}
