//
//  ChamadasVC.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 06/04/22.
//

import UIKit

class ChamadasController: UIViewController{
    
    var chamadasScreen = ChamadasScreen()
    var tableView = ChamadasTableViewCell()
    
    override func loadView() {
        self.chamadasScreen = ChamadasScreen()
        self.view = self.chamadasScreen
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
    }
}
