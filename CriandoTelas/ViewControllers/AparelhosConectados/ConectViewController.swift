//
//  AparelhosConectadosController.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 27/05/22.
//

import UIKit

class ConectViewController: UIViewController{
    //    // MARK: - Closures
    var onConect:(()-> Void)?
    
    private lazy var conectView: ConectView = {
        let view = ConectView()
        view.onConect = {
            
        }
        return view
    }()
    
    // MARK: Lifecyclie
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        self.view = conectView
        view.backgroundColor = .white
        
    }
}
