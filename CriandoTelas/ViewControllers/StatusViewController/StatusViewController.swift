//
//  StatusVIewController.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 04/04/22.
//


import UIKit

class StatusController: ViewControllerDefault {
    // MARK: - Closures
    var onAddPencil:(()-> Void)?
    
    private lazy var statusView: StatusView = {
        let view = StatusView()
        view.onAddPencil = {
            self.onAddPencil?()
            
        }
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
    }
    
    override func loadView() {
        super.loadView()
        self.view = self.statusView
        
    }
}
