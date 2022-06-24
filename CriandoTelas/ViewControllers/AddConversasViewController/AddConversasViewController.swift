//
//  AddConversasViewController.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 25/05/22.
//

import UIKit

class AddConversasController: UIViewController{
    
    private lazy var addConversasView: AddConversasView = {
        let view = AddConversasView()
        view.onTapped = {
            self.dismiss(animated: true) {
                
                let _ = self.navigationController?.popToRootViewController(animated: true)
                
            }
        }
        return view
    }()
    
    // MARK: Lifecyclie
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        self.view = addConversasView
        view.backgroundColor = .white
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
}
