//
//  Status.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 04/04/22.
//

import UIKit

class StatusView: UIView, UISearchBarDelegate {
    
    var onAddPencil:(()-> Void)?

    lazy var privacyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemBlue
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        label.text = "Privacidade"
        return label
    }()
    
    lazy var statusLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 22.0)
        label.text = "Status"
        return label
    }()
    
    lazy var search: UISearchBar = {
        let search = UISearchBar()
        search.translatesAutoresizingMaskIntoConstraints = false
        search.clipsToBounds = true
        search.layer.cornerRadius = 10
        search.placeholder = "Buscar"
        search.searchTextField.textColor = .black
        search.delegate = self
        return search
    }()
    
    lazy var imagStatus: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named:  "mmenezsi")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 60 / 2
        return imageView
    }()
    
    lazy var atualizacoesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 10.0)
        label.text = "ATUALIZAÇÕES RECENTES"
        return label
    }()
    
    lazy var plus: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "plus.circle.fill")
        imagem.tintColor = .systemBlue
        return imagem
    }()
    
    lazy var statsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16.0)
        label.text = "Meu status"
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 12.0)
        label.text = "Adicionar ao meu status"
        return label
    }()
    
    lazy var camera: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "camera.fill")
        imagem.tintColor = .systemBlue
        return imagem
    }()
    lazy var pencilButton: ButtonDefault = {
        let bt = ButtonDefault(title: "", target: self, action: #selector(addPencilTap), for: .touchUpInside)
       bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(systemName: "pencil"), for: [])
        return bt
    }()
    
    lazy var tableView: UIView = {
        let table = StatusTableView()
        table.backgroundColor = .blue
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    @objc
    private func addPencilTap() {
        onAddPencil?()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.privacyLabel)
        self.addSubview(self.statusLabel)
        self.addSubview(self.search)
        self.addSubview(self.imagStatus)
        self.addSubview(self.atualizacoesLabel)
        self.addSubview(self.plus)
        self.addSubview(self.statsLabel)
        self.addSubview(self.descriptionLabel)
        self.addSubview(self.camera)
        self.addSubview(self.pencilButton)
        self.addSubview(tableView)
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
        func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            searchBar.resignFirstResponder()

        }
    }

    func setUpConstraints(){
        NSLayoutConstraint.activate([

            privacyLabel.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            privacyLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 18),


            statusLabel.topAnchor.constraint(equalTo: self.privacyLabel.topAnchor, constant: 30),
            statusLabel.leadingAnchor.constraint(equalTo: self.privacyLabel.leadingAnchor),

            search.topAnchor.constraint(equalTo: self.statusLabel.bottomAnchor, constant: 10),
            search.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 6),
            search.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -6),

            imagStatus.topAnchor.constraint(equalTo: self.search.topAnchor, constant: 60),
            imagStatus.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
            imagStatus.widthAnchor.constraint(equalToConstant: 60),
            imagStatus.heightAnchor.constraint(equalToConstant: 60),

            plus.bottomAnchor.constraint(equalTo: self.imagStatus.bottomAnchor),
            plus.trailingAnchor.constraint(equalTo: self.imagStatus.trailingAnchor),

            atualizacoesLabel.topAnchor.constraint(equalTo: self.plus.topAnchor, constant: 30),
            atualizacoesLabel.leadingAnchor.constraint(equalTo: self.imagStatus.leadingAnchor),

            statsLabel.topAnchor.constraint(equalTo: self.imagStatus.topAnchor, constant: 10),
            statsLabel.leadingAnchor.constraint(equalTo: self.imagStatus.trailingAnchor, constant: 10),

            descriptionLabel.bottomAnchor.constraint(equalTo: self.plus.topAnchor, constant: 15),
            descriptionLabel.leadingAnchor.constraint(equalTo: self.statsLabel.leadingAnchor),

            camera.topAnchor.constraint(equalTo: self.statsLabel.topAnchor, constant: 10),
            camera.leadingAnchor.constraint(equalTo: self.descriptionLabel.trailingAnchor, constant: 90),

            pencilButton.topAnchor.constraint(equalTo: self.statsLabel.topAnchor, constant: 10),
            pencilButton.leadingAnchor.constraint(equalTo: self.camera.trailingAnchor, constant: 30),

            tableView.topAnchor.constraint(equalTo: self.imagStatus.bottomAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}

