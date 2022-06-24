//
//  AddConfigureViewController.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 27/05/22.
//

import UIKit

class AddConfigureViewController: UIViewController{
    // MARK: - Closures
    var onSet:(()-> Void)?
    
    private lazy var addConfigureView: AddConfigureView = {
        let view = AddConfigureView()
        view.onSet = {
        }
        return view
    }()
    
    // MARK: Lifecyclie
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        self.view = addConfigureView
        view.backgroundColor = .white
        
    }
}
