//
//  StatusVIewController.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 04/04/22.
//


import UIKit

class StatusController: UIViewController, UISearchBarDelegate {
    
    var statusScreen = StatusScreen()
    var tableView = CustomTableViewCell()
    let searchbar = UISearchBar()

    
    override func loadView() {
        self.statusScreen = StatusScreen()
        self.view = self.statusScreen
        
//        self.tableView = CustomTableViewCell()
//        self.view = self.tableView
//
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        searchbar.delegate = self
        view.addSubview(searchbar)
       // view.addSubview(tableView)
       // setUpConstraints()
    }
    
    
    override func viewDidLayoutSubviews() {
     //   searchbar.frame = CGRect(x: 20, y: view.safeAreaInsets.top, width: view.frame.size.width-20, height: 50)
        super.viewDidLayoutSubviews()
        
       tableView.frame = view.bounds
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        if let text = searchbar.text {
        }
    }
    
//    func setUpConstraints(){
//        NSLayoutConstraint.activate([
//
//
//            self.tableView.topAnchor.constraint(equalTo: statusScreen.imagStatus.bottomAnchor, constant: 20),
//            self.tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
//            self.tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
//            self.tableView.heightAnchor.constraint(equalToConstant: 400),
//        ])
//
//    }
    
    
}


