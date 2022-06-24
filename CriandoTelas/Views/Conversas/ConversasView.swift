//
//  ConversasScreen.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 07/04/22.
//

import UIKit

class ConversasView: UIView {
    
    var onAddSelect:(()-> Void)?
    
    lazy var editionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemBlue
        label.font = UIFont.boldSystemFont(ofSize: 16.0)
        label.text = "Editar"
        return label
    }()
    
    lazy var selectButton: ButtonDefault = {
        let bt = ButtonDefault(title: "", target: self, action: #selector(addSelectTap), for: .touchUpInside)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(systemName: "square.and.pencil"), for: [])
        return bt
    }()
    
    lazy var conversasLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 26)
        label.text = "Conversas"
        return label
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
    
    lazy var listaLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemBlue
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "Listas de transmissão"
        return label
    }()
    
    lazy var novoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemBlue
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "Novo grupo"
        return label
    }()
    
    lazy var tableView: UIView = {
        let table = ConversasTableView()
        table.backgroundColor = .blue
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    @objc
    private func addSelectTap() {
        onAddSelect?()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.editionLabel)
        self.addSubview(self.selectButton)
        self.addSubview(self.conversasLabel)
        self.addSubview(self.searchChamada)
        self.addSubview(self.listaLabel)
        self.addSubview(self.novoLabel)
        self.addSubview(tableView)
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            editionLabel.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 30),
            editionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            
            selectButton.topAnchor.constraint(equalTo: self.editionLabel.topAnchor),
            selectButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            conversasLabel.topAnchor.constraint(equalTo: self.editionLabel.topAnchor, constant: 30),
            conversasLabel.leadingAnchor.constraint(equalTo: self.editionLabel.leadingAnchor),
            
            searchChamada.topAnchor.constraint(equalTo: self.conversasLabel.bottomAnchor, constant: 10),
            searchChamada.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 6),
            searchChamada.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -6),
            
            listaLabel.topAnchor.constraint(equalTo: self.searchChamada.bottomAnchor, constant: 20),
            listaLabel.leadingAnchor.constraint(equalTo: self.conversasLabel.leadingAnchor),
            
            novoLabel.topAnchor.constraint(equalTo: self.searchChamada.bottomAnchor, constant: 20),
            novoLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            tableView.topAnchor.constraint(equalTo: self.listaLabel.bottomAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            
        ])
    }
}


