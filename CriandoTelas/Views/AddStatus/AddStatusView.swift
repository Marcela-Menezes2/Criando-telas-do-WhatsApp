//
//  AddStatusView.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 26/05/22.
//

import UIKit

class AddStatusView: UIView {
    var onAddMultiply:(()-> Void)?
    
    lazy var statusLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .grayColor
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.text = "Digite seu status"
        return label
    }()
    
    lazy var multiplyButton: ButtonDefaultt = {
        let bt = ButtonDefaultt(title: "", target: self, action: #selector(addMultiplyTap), for: .touchUpInside)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(systemName: "multiply"), for: [])
        bt.tintColor = .white
        bt.contentVerticalAlignment = .fill
        bt.contentHorizontalAlignment = .fill
        return bt
    }()
    
    lazy var icon2: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "t.square")
        imagem.tintColor = .white
        return imagem
    }()
    
    lazy var icon3: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "paintpalette.fill")
        imagem.tintColor = .white
        return imagem
    }()
    
    @objc
    private func addMultiplyTap() {
        onAddMultiply?()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.statusLabel)
        self.addSubview(self.multiplyButton)
        self.addSubview(self.icon2)
        self.addSubview(self.icon3)
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            multiplyButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 60),
            multiplyButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15),
            multiplyButton.heightAnchor.constraint(equalToConstant: 20),
            multiplyButton.widthAnchor.constraint(equalToConstant: 20),
            
            icon2.topAnchor.constraint(equalTo: self.multiplyButton.topAnchor),
            icon2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
            icon2.widthAnchor.constraint(equalToConstant: 25),
            icon2.heightAnchor.constraint(equalToConstant: 25),
            
            icon3.topAnchor.constraint(equalTo: self.multiplyButton.topAnchor),
            icon3.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            icon3.widthAnchor.constraint(equalToConstant: 25),
            icon3.heightAnchor.constraint(equalToConstant: 25),
            
            statusLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -580),
            statusLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 70),
            statusLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -70)
        ])
    }
    
}
