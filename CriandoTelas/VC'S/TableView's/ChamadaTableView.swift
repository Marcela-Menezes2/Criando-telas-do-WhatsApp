//
//  ChamadaTableView.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 07/04/22.
//

import UIKit

class ChamadaTableView: UIView {
    
    let stories: [String] = ["perfil1", "perfil2", "perfil3", "profile4", "profile8", "perfil1", "perfil2", "perfil3", "profile4", "profile8", "perfil1", "perfil2", "perfil3", "profile4", "profile8", "perfil1", "perfil2", "perfil3", "profile4"]
    let labelText: [String] = ["Ana", "Marina", "Fernanda", "Laura", "Claudia", "Victória", "Sophia", "Joana", "Mallu", "Roberta", "Ana Clara", "Marina", "Rebeca", "Cynthia", "Laís", "Camilla", "Patricia", "Rafaella", "Letícia"]
    let chamadaText: [String] = ["Recebida", "Efetuada", "Perdida", "Efetuada", "Recebida", "Recebida", "Efetuada", "Perdida", "Efetuada", "Recebida", "Recebida", "Efetuada", "Perdida", "Efetuada", "Recebida", "Recebida", "Efetuada", "Perdida", "Efetuada"]
    let horaText: [String] = ["8:30", "8:59", "9:14", "10:16", "10:21", "11:01", "11:18", "11:22", "11:30", "11:40", "12:25", "14:52", "15:00", "16:10", "16:55", "17:00", "18:10", "19:00", "21:50"]
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.register(ChamadasTableViewCell.self, forCellReuseIdentifier: "ChamadasTableViewCell")
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        tableView.dataSource = self
//        tableView.delegate = self
        self.addSubview(tableView)
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        
        ])
    }
    
}

extension ChamadaTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ChamadasTableViewCell.identifier, for:  indexPath) as! ChamadasTableViewCell
        
        
        cell.configureCell(imageName: stories[indexPath.row], name: labelText[indexPath.row], hora: horaText[indexPath.row], chamada: chamadaText[indexPath.row])
        return cell

    }
    
}


