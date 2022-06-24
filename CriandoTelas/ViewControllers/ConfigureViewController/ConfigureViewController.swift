//
//  ConfigureVC.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 08/04/22.
//

import UIKit

class ConfigureController: ViewControllerDefault{
    // MARK: - Closures
    var onSet:(()-> Void)?
    var onConect:(()-> Void)?
    private lazy var configureView: ConfigureView = {
        let view = ConfigureView()
        view.onSet = {
            self.onSet?()
            view.onConect = {
                self.onConect?()
            }
        }
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .configureColor
    }
    
    override func loadView() {
        super.loadView()
        self.view = self.configureView
    }
}
