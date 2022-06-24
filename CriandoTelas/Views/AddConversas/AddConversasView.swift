//
//  AddConversasView.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 25/05/22.
//

import UIKit

class AddConversasView: UIView {
    var onTapped:(()-> Void)?
    
    lazy var novaConversaLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "Nova conversa"
        return label
    }()
    
    lazy var multiplyButton: ButtonDefault = {
        let bt = ButtonDefault(title: "", target: self, action: #selector(onCloseTap), for: .touchUpInside)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(systemName: "multiply"), for: [])
        bt.tintColor = .gray
        bt.contentMode = .scaleAspectFit
        bt.isHidden = isHidden
        return bt
    }()
    
    lazy var searchChamada: UISearchBar = {
        let search = UISearchBar()
        search.translatesAutoresizingMaskIntoConstraints = false
        search.clipsToBounds = true
        search.layer.cornerRadius = 10
        search.placeholder = "Pesquisar"
        search.searchTextField.textColor = .black
        return search
    }()
    
    lazy var personImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "person.2.fill")
        imagem.tintColor = .systemBlue
        return imagem
    }()
    
    lazy var grupoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemBlue
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Novo grupo"
        return label
    }()
    
    lazy var personImage2: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "person.crop.circle.fill.badge.plus")
        imagem.tintColor = .systemBlue
        return imagem
    }()
    
    lazy var novoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemBlue
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Novo contato"
        return label
    }()
    
    lazy var contatoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemGray
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Contatos frequentes"
        return label
    }()
    
    @objc
    private func onCloseTap() {
        onTapped?()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.novaConversaLabel)
        self.addSubview(self.multiplyButton)
        self.addSubview(self.searchChamada)
        self.addSubview(self.personImage)
        self.addSubview(self.grupoLabel)
        self.addSubview(self.personImage2)
        self.addSubview(self.novoLabel)
        self.addSubview(self.contatoLabel)
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            novaConversaLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 15),
            novaConversaLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            multiplyButton.topAnchor.constraint(equalTo: self.novaConversaLabel.topAnchor),
            multiplyButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            searchChamada.topAnchor.constraint(equalTo: self.novaConversaLabel.bottomAnchor, constant: 10),
            searchChamada.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 6),
            searchChamada.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -6),
            
            personImage.topAnchor.constraint(equalTo: self.searchChamada.bottomAnchor, constant: 25),
            personImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15),
            
            grupoLabel.topAnchor.constraint(equalTo: self.personImage.topAnchor, constant: 3),
            grupoLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 50),
            
            personImage2.topAnchor.constraint(equalTo: self.personImage.bottomAnchor, constant: 20),
            personImage2.leftAnchor.constraint(equalTo: self.personImage.leftAnchor),
            personImage2.widthAnchor.constraint(equalToConstant: 24),
            personImage2.heightAnchor.constraint(equalToConstant: 24),
            
            novoLabel.topAnchor.constraint(equalTo: self.personImage2.topAnchor, constant: 3),
            novoLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 50),
            
            contatoLabel.topAnchor.constraint(equalTo: self.novoLabel.bottomAnchor, constant: 40),
            contatoLabel.leftAnchor.constraint(equalTo: self.searchChamada.leftAnchor, constant: 10),
            
        ])
    }
}

