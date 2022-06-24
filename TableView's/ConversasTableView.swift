//
//  ConversasTableView.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 08/04/22.
//

import UIKit

class ConversasTableView: UIView {
    
    let stories: [String] = ["perfil1", "perfil2", "perfil3", "profile4", "profile8", "perfil1", "perfil2", "perfil3", "profile4", "profile8", "perfil1", "perfil2", "perfil3", "profile4", "profile8", "perfil1", "perfil2", "perfil3", "profile4"]
    let labelText: [String] = ["Ana", "Marina", "Fernanda", "Laura", "Claudia", "Victória", "Sophia", "Joana", "Mallu", "Roberta", "Ana Clara", "Marina", "Rebeca", "Cynthia", "Laís", "Camilla", "Patricia", "Rafaella", "Letícia"]
    let horaText: [String] = ["08:30", "08:45", "10:21", "10:24", "10:46", "10:48", "10:55", "10:59", "11:01", "11:15", "11:20", "11:35", "12:00", "12:17", "12:40", "13:15", "14:00", "14:22", "14:25"]
    let msgText: [String] = ["Oi, tudo bem?", "Vai pra aula hoje?", "Estou presa no trânsito", "Bom dia", "Se der eu vou, mas tomara que não dê rsrs",
                             "vou comprar o presente dela ainda", "parei agora para almoçar", "Vou de carona pra o cursinho", "Quando chegar eu te aviso", "Vamos pra piscina, amanhã?", "Tem lasanha, só esquentar e comer", "Arrume seu quarto", "Sextou!!!", "Deu banho nos dog's?", "O seu remédio esta na bolsa", "Estou bem, e vc?", "Saindo de casa agora", "tudo certo!", "Saiu sim"]
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.register(ConversasTableViewCell.self, forCellReuseIdentifier: "ConversasTableViewCell")
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        tableView.dataSource = self
        tableView.delegate = self
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

