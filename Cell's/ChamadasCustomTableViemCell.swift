//
//  ChamadasCustomTableViemCell.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 07/04/22.
//

import UIKit

class ChamadasTableViewCell: UITableViewCell {
    
    
    static let identifier = "ChamadasTableViewCell"
    
    lazy var labelText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 13)
        
        return label
    }()
    
    lazy var phoneImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "phone.fill")
        imagem.tintColor = .systemGray
        return imagem
    }()
    
    lazy var horaText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    lazy var infoImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "info.circle")
        imagem.tintColor = .systemBlue
        return imagem
    }()
    
    lazy var chamadaText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    
    lazy var imageEye: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 40 / 2
        image.image = UIImage(named: "perfil1")
        image.layer.borderColor = UIColor.red.cgColor
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(labelText)
        contentView.addSubview(imageEye)
        contentView.addSubview(horaText)
        contentView.addSubview(chamadaText)
        contentView.addSubview(phoneImage)
        contentView.addSubview(infoImage)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(imageName: String, name: String, hora: String, chamada: String){
        
        imageEye.image = UIImage(named: imageName)
        
        labelText.text = name
        
        horaText.text = hora
        
        chamadaText.text = chamada
        if chamadaText.text == "Perdida" {
            labelText.textColor = .red
        }
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            
            imageEye.topAnchor.constraint(equalTo: self.topAnchor),
            imageEye.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            imageEye.heightAnchor.constraint(equalToConstant: 40),
            imageEye.widthAnchor.constraint(equalToConstant: 40),
            
            labelText.topAnchor.constraint(equalTo: self.imageEye.topAnchor),
            labelText.leadingAnchor.constraint(equalTo: self.imageEye.trailingAnchor, constant: 10),
            
            chamadaText.topAnchor.constraint(equalTo: self.labelText.topAnchor, constant: 20),
            chamadaText.leadingAnchor.constraint(equalTo: self.phoneImage.trailingAnchor, constant: 5),
            
            phoneImage.topAnchor.constraint(equalTo: self.chamadaText.topAnchor),
            phoneImage.leadingAnchor.constraint(equalTo: self.imageEye.trailingAnchor, constant: 10),
            phoneImage.heightAnchor.constraint(equalToConstant: 12),
            phoneImage.widthAnchor.constraint(equalToConstant: 12),
            
            infoImage.topAnchor.constraint(equalTo: self.imageEye.topAnchor, constant: 5),
            infoImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            horaText.topAnchor.constraint(equalTo: self.labelText.topAnchor, constant: 10),
            horaText.trailingAnchor.constraint(equalTo: self.infoImage.leadingAnchor, constant: -10),
            
        ])
    }
}


