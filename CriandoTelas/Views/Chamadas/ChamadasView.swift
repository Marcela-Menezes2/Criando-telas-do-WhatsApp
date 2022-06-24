//
//  ChamadasScreen.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 06/04/22.
//

import UIKit

class ChamadasView: UIView {
    
    lazy var editionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemBlue
        label.font = UIFont.boldSystemFont(ofSize: 16.0)
        label.text = "Editar"
        return label
    }()
    
    lazy var segmentedControl: UISegmentedControl = {
        let mySegmentControl = UISegmentedControl(items: ["Todas", "Perdidas"])
        mySegmentControl.selectedSegmentIndex = 0
        mySegmentControl.backgroundColor = UIColor.systemGray
        mySegmentControl.translatesAutoresizingMaskIntoConstraints = false
        return mySegmentControl
    }()
    
    lazy var phoneImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "phone.and.waveform")
        imagem.tintColor = .systemBlue
        return imagem
    }()
    
    lazy var chamadasLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 26)
        label.text = "Chamadas"
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
    
    lazy var tableView: UIView = {
        let table = ChamadaTableView()
        table.backgroundColor = .blue
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.editionLabel)
        self.addSubview(self.segmentedControl)
        self.addSubview(self.phoneImage)
        self.addSubview(self.chamadasLabel)
        self.addSubview(self.searchChamada)
        self.addSubview(tableView)
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            editionLabel.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 30),
            editionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            
            segmentedControl.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 5),
            segmentedControl.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            segmentedControl.widthAnchor.constraint(equalToConstant: 150),
            
            phoneImage.topAnchor.constraint(equalTo: self.editionLabel.topAnchor),
            phoneImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            chamadasLabel.topAnchor.constraint(equalTo: self.editionLabel.topAnchor, constant: 30),
            chamadasLabel.leadingAnchor.constraint(equalTo: self.editionLabel.leadingAnchor),
            
            searchChamada.topAnchor.constraint(equalTo: self.chamadasLabel.bottomAnchor, constant: 10),
            searchChamada.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 6),
            searchChamada.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -6),
            
            tableView.topAnchor.constraint(equalTo: self.searchChamada.bottomAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            
        ])
    }
}
