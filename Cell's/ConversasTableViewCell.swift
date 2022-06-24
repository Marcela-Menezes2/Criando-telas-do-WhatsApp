//
//  ConversasTableViewCell.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 08/04/22.
//

import UIKit

class ConversasTableViewCell: UITableViewCell {
    
    static let identifier = "ConversasTableViewCell"
    
    lazy var labelText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.text = "Marcela"
        return label
    }()
    
    lazy var msgText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 12)
        label.text = "oii, tudo bem?"
        return label
    }()
    
    lazy var horaText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemBlue
        label.font = UIFont.systemFont(ofSize: 12)
        label.text = "12:30"
        return label
    }()
    
    lazy var imagePerfil: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 40 / 2
        image.image = UIImage(named: "profile1")
        image.layer.borderColor = UIColor.red.cgColor
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(labelText)
        contentView.addSubview(imagePerfil)
        contentView.addSubview(msgText)
        contentView.addSubview(horaText)
        setupConstraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(imageName: String, name: String, mensagem: String,  hora: String){
        
        imagePerfil.image = UIImage(named: imageName)
        
        labelText.text = name
        
        msgText.text = mensagem
        
        horaText.text = hora
        
        horaText.text = hora
        if horaText.text == "8:30" {
            horaText.textColor = .green
        }
        
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            
            imagePerfil.topAnchor.constraint(equalTo: self.topAnchor),
            imagePerfil.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            imagePerfil.heightAnchor.constraint(equalToConstant: 40),
            imagePerfil.widthAnchor.constraint(equalToConstant: 40),
            
            labelText.topAnchor.constraint(equalTo: self.imagePerfil.topAnchor, constant: 5),
            labelText.leadingAnchor.constraint(equalTo: self.imagePerfil.trailingAnchor, constant: 20),
            
            msgText.topAnchor.constraint(equalTo: self.labelText.topAnchor, constant: 18),
            msgText.leadingAnchor.constraint(equalTo: self.imagePerfil.trailingAnchor, constant: 20),
            
            horaText.topAnchor.constraint(equalTo: self.imagePerfil.topAnchor, constant: 5),
            horaText.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
            
        ])
    }
}


