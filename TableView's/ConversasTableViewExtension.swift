//
//  ConversasTableViewExtension.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 23/06/22.
//

import UIKit

extension ConversasTableView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ConversasTableViewCell.identifier, for:  indexPath) as! ConversasTableViewCell
        
        cell.configureCell(imageName: stories[indexPath.row], name: labelText[indexPath.row], mensagem: msgText[indexPath.row], hora: horaText[indexPath.row])
        return cell
    }
}
