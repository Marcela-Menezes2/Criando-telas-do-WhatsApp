//
//  CustomTableViewCell.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 04/04/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier = "CustomTableViewCell"
    
    lazy var labelText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.text = "Marcela"
        return label
    }()
    
    lazy var horaText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 12)
        label.text = "há 2hr"
        return label
    }()
    
    
    lazy var imageEye: UIImageView = {
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
        contentView.addSubview(imageEye)
        contentView.addSubview(horaText)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(imageName: String, name: String, hora: String){
        
        imageEye.image = UIImage(named: imageName)
        
        labelText.text = name
        
        horaText.text = hora
        
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            
            labelText.topAnchor.constraint(equalTo: self.imageEye.topAnchor, constant: 5),
            labelText.leadingAnchor.constraint(equalTo: self.imageEye.trailingAnchor, constant: 20),
            
            horaText.topAnchor.constraint(equalTo: self.labelText.topAnchor, constant: 18),
            horaText.leadingAnchor.constraint(equalTo: self.imageEye.trailingAnchor, constant: 20),
            
            imageEye.topAnchor.constraint(equalTo: self.topAnchor),
            imageEye.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            imageEye.heightAnchor.constraint(equalToConstant: 40),
            imageEye.widthAnchor.constraint(equalToConstant: 40),
            
        ])
    }
}

