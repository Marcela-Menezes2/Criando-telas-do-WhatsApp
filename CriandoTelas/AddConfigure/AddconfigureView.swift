//
//  AddconfigureView.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 27/05/22.
//

import UIKit

class AddConfigureView: UIView {
    var onSet:(()-> Void)?
    
    lazy var msgLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "Mensagens favoritas"
        return label
    }()
    
    lazy var imagStatus: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named:  "conversa")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 90 / 2
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Nenhuma mensagem favorita"
        return label
    }()
    
    lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemGray
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.text = "Toque e segure em qualquer mensagem para marcá-la"
        return label
    }()
    
    lazy var subtitleLabel2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemGray
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.text = "como favorita e encontrá-la facilmenete mais tarde"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.msgLabel)
        self.addSubview(self.imagStatus)
        self.addSubview(self.titleLabel)
        self.addSubview(self.subtitleLabel)
        self.addSubview(self.subtitleLabel2)
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            msgLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            msgLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 120),
            msgLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            
            imagStatus.bottomAnchor.constraint(equalTo: self.msgLabel.bottomAnchor, constant: 380),
            imagStatus.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 150),
            imagStatus.widthAnchor.constraint(equalToConstant: 90),
            imagStatus.heightAnchor.constraint(equalToConstant: 90),
            
            titleLabel.topAnchor.constraint(equalTo: self.imagStatus.bottomAnchor, constant: 20),
            titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 100),
            
            subtitleLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 10),
            subtitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 25),
            
            subtitleLabel2.topAnchor.constraint(equalTo: self.subtitleLabel.bottomAnchor, constant: 5),
            subtitleLabel2.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 35),
            
        ])
    }
}
