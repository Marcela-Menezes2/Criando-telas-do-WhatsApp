//
//  TableViewVC.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 04/04/22.
//
//
import UIKit

class StatusTableView: UIView {
    
    let stories: [String] = ["status", "status1", "status2", "status3", "status4", "status5", "status", "status7", "status8", "profile9", "profile2", "profile1", "profile4", "profile5", "profile6", "profile7", "profile8", "profile6", "profile1", "profile2", "profile3", "profile4", "profile5", "profile6", "profile7", "profile8", "profile9", "status", "status1", "status2", "status3", "status4", "status5", "status", "status7", "status8"]
    let labelText: [String] = ["Ana", "Marina", "Natanael", "Laura", "Claudia", "Wender", "Pedro", "Marcia", "Victor", "Sabrina", "Guilherme", "Gustavo", "Tatiana", "Joaquim", "Severino", "Roberta", "Fabio", "Viviane", "Victoria", "Ana", "Marina", "Natanael", "Laura", "Claudia", "Wender", "Pedro", "Marcia", "Victor", "Sabrina", "Guilherme", "Gustavo", "Tatiana", "Joaquim", "Severino", "Roberta", "Fabio", "Viviane",]
    let horaText: [String] = ["há 2hr", "há 3hr", "há 4hr", "há 8hr", "há 1hr", "há 7hr", "há 2hr", "há 3hr", "há 4hr", "há 5hr", "há 9hr", "há 2hr", "há 3hr", "há 4hr", "há 6hr", "há 7hr", "há 5hr", "há 4hr", "há 1hr", "há 2hr", "há 3hr", "há 4hr", "há 8hr", "há 1hr", "há 7hr", "há 2hr", "há 3hr", "há 4hr", "há 5hr", "há 9hr", "há 1hr", "há 7hr", "há 2hr", "há 3hr", "há 4hr", "há 5hr", "há 9hr", "há 2hr", "há 3hr", "há 4hr", "há 6hr", "há 7hr", "há 5hr", "há 4hr", "há 1hr"]
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomTableViewCell")
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

extension StatusTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for:  indexPath) as! CustomTableViewCell
        
        cell.configureCell(imageName: stories[indexPath.row], name: labelText[indexPath.row], hora: horaText[indexPath.row])
        return cell
    }
    
}
