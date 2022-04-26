//
//  ConfigureScreen.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 08/04/22.
//

import UIKit

class ConfigureScreen: UIView {
    
    lazy var configureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 25.0)
        label.text = "Configurações"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.configureLabel)
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            configureLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 40),
            configureLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            
        ])
    }
    
}
