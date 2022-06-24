//
//  ConversasVC.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 07/04/22.
//

import UIKit

class ConversasViewController: ViewControllerDefault {
    // MARK: - Closures
    var onAddSelect:(()-> Void)?
    
    private lazy var conversasView: ConversasView = {
        let view = ConversasView()
        view.onAddSelect = {
            self.onAddSelect?()
            
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
        self.view = self.conversasView
        
    }
}
