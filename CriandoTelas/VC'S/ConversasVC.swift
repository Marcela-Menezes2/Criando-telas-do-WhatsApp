//
//  ConversasVC.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 07/04/22.
//

import UIKit

class ConversasController: UIViewController{
    
    var conversasScreen = ConversasScreen()
    var tableView = ConversasTableViewCell()


    
    override func loadView() {
        self.conversasScreen = ConversasScreen()
        self.view = self.conversasScreen
        
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
    
    
    override func viewDidLayoutSubviews() {
     //   searchbar.frame = CGRect(x: 20, y: view.safeAreaInsets.top, width: view.frame.size.width-20, height: 50)
        super.viewDidLayoutSubviews()

         tableView.frame = view.bounds
            
            
        }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
    }
     

//class ResultsVC: UIViewController {
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .systemGray
//    }
//}
//
//class ConversasViewController: UIViewController, UISearchResultsUpdating {
//    
//    let searchController = UISearchController(searchResultsController: ResultsVC())
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .white
//       // searchController.searchBar.delegate = self
//        title = "Pesquisar"
//        searchController.searchResultsUpdater = self
//        navigationItem.searchController = searchController
//    }
//    
//    func updateSearchResults(for searchController: UISearchController) {
//        guard let text = searchController.searchBar.text else {
//            return
//        }
//     let vc = searchController.searchResultsController as? ResultsVC
//        vc?.view.backgroundColor = .yellow
//    print("Ana", "Mariana")
//    }
//}
}
