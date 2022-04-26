//
//  ConfigureVC.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 08/04/22.
//

import UIKit

class ConfigureController: UIViewController{
    
   var configureScreen = ConfigureScreen()


    
    override func loadView() {
        self.configureScreen = ConfigureScreen()
        self.view = self.configureScreen
        
//        self.tableView = CustomTableViewCell()
//        self.view = self.tableView
//
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
       // view.addSubview(tableView)
       // setUpConstraints()
    }
    
//
    override func viewDidLayoutSubviews() {
     //   searchbar.frame = CGRect(x: 20, y: view.safeAreaInsets.top, width: view.frame.size.width-20, height: 50)
        super.viewDidLayoutSubviews()

         //  tableView.frame = view.bounds

            
        }
//     
        
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
    }
}

