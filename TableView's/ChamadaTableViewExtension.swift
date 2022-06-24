//
//  ChamadaTableViewExtension.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 23/06/22.
//

import UIKit

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
