//
//  AddStatusViewController.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 26/05/22.
//

import UIKit

class AddStatusViewController: UIViewController{
    // MARK: - Closures
    var onAddMultiply:(()-> Void)?
    
    private lazy var addStatusView: AddStatusView = {
        let view = AddStatusView()
        view.onAddMultiply = {
            self.navigationController?.popToRootViewController(animated: false)
        }
        return view
    }()
    
    // MARK: Lifecyclie
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        self.view = addStatusView
        view.backgroundColor = .systemPurple
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
}
