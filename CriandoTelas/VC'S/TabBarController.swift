//
//  ViewController.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 23/03/22.
//

import UIKit

class TabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabBarController()
    }
    
    private func setupTabBarController() {
        
        let status = UINavigationController(rootViewController: StatusController())
        let chamadas = UINavigationController(rootViewController: ChamadasController())
        let camera = UINavigationController(rootViewController: CameraController())
        let conversa = UINavigationController(rootViewController: ConversasController())
        let configuracoes = UINavigationController(rootViewController: ConfigureController())
        self.setViewControllers([status, chamadas, camera, conversa, configuracoes], animated: false)
        self.tabBar.backgroundColor = .white
        self.tabBar.isTranslucent = false
        
        guard let itens = tabBar.items else{return}
        
        itens[0].title = "Status"
        itens[0].image = UIImage(systemName: "circle.circle")
        
        itens[1].title = "Chamadas"
        itens[1].image = UIImage(systemName: "phone")
        
        
        itens[2].title = "Câmera"
        itens[2].image = UIImage(systemName: "camera")
        
        
        itens[3].title = "Conversas"
        itens[3].image = UIImage(systemName: "message")
        
        itens[4].title = "Configurações"
        itens[4].image = UIImage(systemName: "gear")
        
        
    }
}



class Chamada: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.gradientBackground(colorOne: colors.blacktransp, colorTwo: colors.white)
                view.gradientBackground(colorOne: colors.skyBlue, colorTwo: colors.neonGreen)
        self.title = "Chamadas"
    }


}

class Camera: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.gradientBackground(colorOne: colors.blacktransp, colorTwo: colors.white)
                view.gradientBackground(colorOne: colors.skyBlue, colorTwo: colors.skyBlue)
        self.title = "Câmera"
    }


}

class Conversas: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.gradientBackground(colorOne: colors.blacktransp, colorTwo: colors.white)
        view.gradientBackground(colorOne: colors.skyBlue, colorTwo: colors.flickrPink)
        self.title = "Conversas"
    }


}

class Configuracoes: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.gradientBackground(colorOne: colors.blacktransp, colorTwo: colors.white)
        view.gradientBackground(colorOne: colors.skyBlue, colorTwo: colors.flickrPink)
        self.title = "Configurações"
    }


}




