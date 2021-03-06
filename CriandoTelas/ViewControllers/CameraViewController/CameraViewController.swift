//
//  CameraVC.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 25/04/22.
//

import UIKit

class CameraController: UIViewController{
    var onAddTransaction:(()-> Void)?
    
    var cameraView = CameraView()
    
    override func loadView() {
        self.cameraView = CameraView()
        self.view = self.cameraView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        let storiesVC = StoriesViewController()
        self.addChild(storiesVC)
        self.view.addSubview(storiesVC.view)
        self.didMove(toParent: self)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
    }
}
