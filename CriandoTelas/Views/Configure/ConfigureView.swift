//
//  ConfigureScreen.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 08/04/22.
//

import UIKit

class ConfigureView: UIView {
    var onSet:(()-> Void)?
    var onConect:(()-> Void)?
    
    lazy var configureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 25.0)
        label.text = "Configurações"
        return label
    }()
    
    lazy var view: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var imagStatus: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named:  "mmenezsi")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 60 / 2
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16.0)
        label.text = "Marcela Menezes"
        return label
    }()
    
    lazy var statusLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 12.0)
        label.text = " 'Somos instantes' ✨ "
        return label
    }()
    
    lazy var icon1: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "qrcode")
        imagem.tintColor = .systemBlue
        return imagem
    }()
    
    lazy var view2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    
    lazy var icon2: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "star.square.fill")
        imagem.tintColor = .systemYellow
        return imagem
    }()
    
    lazy var msgLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        label.text = "Mensagens favoritas"
        return label
    }()
    
    lazy var setButton: ButtonDefault = {
        let bt = ButtonDefault(title: "", target: self, action: #selector(addSetTap), for: .touchUpInside)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(systemName: "chevron.forward"), for: [])
        bt.tintColor = .grayColor
        bt.contentMode = .scaleAspectFit
        bt.isHidden = isHidden
        return bt
    }()
    
    lazy var icon3: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "tv.circle.fill")
        imagem.tintColor = .greenColor
        return imagem
    }()
    
    lazy var conectLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        label.text = "Aparelhos conectados"
        return label
    }()
    
    
    lazy var setButton2: ButtonDefault = {
        let bt = ButtonDefault(title: "", target: self, action: #selector(addConectTap), for: .touchUpInside)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(systemName: "chevron.forward"), for: [])
        bt.tintColor = .grayColor
        bt.contentMode = .scaleAspectFit
        bt.isHidden = isHidden
        return bt
    }()
    
    lazy var view3: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var icon4: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "mappin.square.fill")
        imagem.tintColor = .systemBlue
        return imagem
    }()
    
    lazy var countLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        label.text = "Conta"
        return label
    }()
    
    lazy var setIcon3: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "chevron.forward")
        imagem.tintColor = .grayColor
        return imagem
    }()
    
    lazy var icon5: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(named: "whatsapp")
        return imagem
    }()
    
    lazy var conversasLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        label.text = "Conversas"
        return label
    }()
    
    lazy var setIcon4: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "chevron.forward")
        imagem.tintColor = .grayColor
        return imagem
    }()
    
    lazy var icon6: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "bell.badge.circle.fill")
        imagem.tintColor = .red
        return imagem
    }()
    
    lazy var notificationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        label.text = "Notificações"
        return label
    }()
    
    lazy var setIcon5: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "chevron.forward")
        imagem.tintColor = .grayColor
        return imagem
    }()
    
    lazy var icon7: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "brazilianrealsign.square.fill")
        imagem.tintColor = .greenColor
        return imagem
    }()
    
    lazy var pagamentosLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        label.text = "Pagamentos"
        return label
    }()
    
    lazy var setIcon6: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "chevron.forward")
        imagem.tintColor = .grayColor
        return imagem
    }()
    
    lazy var icon8: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "arrow.up.arrow.down.square.fill")
        imagem.tintColor = .systemGreen
        return imagem
    }()
    
    lazy var armazenamentoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        label.text = "Armazenamento e dados"
        return label
    }()
    
    lazy var setIcon7: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "chevron.forward")
        imagem.tintColor = .grayColor
        return imagem
    }()
    
    lazy var view4: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var icon9: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "i.square.fill")
        imagem.tintColor = .blue
        return imagem
    }()
    
    lazy var ajudaLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        label.text = "Ajuda"
        return label
    }()
    
    lazy var setIcon8: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "chevron.forward")
        imagem.tintColor = .grayColor
        return imagem
    }()
    
    lazy var icon10: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "heart.square.fill")
        imagem.tintColor = .red
        return imagem
    }()
    
    lazy var conviteLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        label.text = "Convidar um amigo"
        return label
    }()
    
    lazy var setIcon9: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "chevron.forward")
        imagem.tintColor = .grayColor
        return imagem
    }()
    
    @objc
    private func addSetTap() {
        onSet?()
    }
    
    @objc
    private func addConectTap() {
        onConect?()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.configureLabel)
        self.addSubview(self.view)
        self.addSubview(self.imagStatus)
        self.addSubview(self.nameLabel)
        self.addSubview(self.statusLabel)
        self.addSubview(self.icon1)
        self.addSubview(self.view2)
        self.addSubview(self.icon2)
        self.addSubview(self.msgLabel)
        self.addSubview(self.setButton)
        self.addSubview(self.icon3)
        self.addSubview(self.conectLabel)
        self.addSubview(self.setButton2)
        self.addSubview(self.view3)
        self.addSubview(self.icon4)
        self.addSubview(self.countLabel)
        self.addSubview(self.setIcon3)
        self.addSubview(self.icon5)
        self.addSubview(self.conversasLabel)
        self.addSubview(self.setIcon4)
        self.addSubview(self.icon6)
        self.addSubview(self.notificationLabel)
        self.addSubview(self.setIcon5)
        self.addSubview(self.icon7)
        self.addSubview(self.pagamentosLabel)
        self.addSubview(self.setIcon6)
        self.addSubview(self.icon8)
        self.addSubview(self.armazenamentoLabel)
        self.addSubview(self.setIcon7)
        self.addSubview(self.view4)
        self.addSubview(self.icon9)
        self.addSubview(self.ajudaLabel)
        self.addSubview(self.setIcon8)
        self.addSubview(self.icon10)
        self.addSubview(self.conviteLabel)
        self.addSubview(self.setIcon9)
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            configureLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 40),
            configureLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            
            view.topAnchor.constraint(equalTo: self.configureLabel.topAnchor, constant: 40),
            view.leftAnchor.constraint(equalTo: self.leftAnchor),
            view.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            view.heightAnchor.constraint(equalToConstant: 70),
            
            imagStatus.topAnchor.constraint(equalTo: self.configureLabel.topAnchor, constant: 50),
            imagStatus.leftAnchor.constraint(equalTo: self.configureLabel.leftAnchor),
            imagStatus.widthAnchor.constraint(equalToConstant: 50),
            imagStatus.heightAnchor.constraint(equalToConstant: 50),
            
            nameLabel.topAnchor.constraint(equalTo: self.imagStatus.topAnchor),
            nameLabel.leftAnchor.constraint(equalTo: self.imagStatus.leftAnchor, constant: 60),
            
            statusLabel.topAnchor.constraint(equalTo: nameLabel.topAnchor, constant: 25),
            statusLabel.leftAnchor.constraint(equalTo: self.nameLabel.leftAnchor),
            
            icon1.topAnchor.constraint(equalTo: self.nameLabel.topAnchor,constant: 6),
            icon1.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            view2.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
            view2.leftAnchor.constraint(equalTo: self.leftAnchor),
            view2.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            view2.heightAnchor.constraint(equalToConstant: 75),
            
            icon2.topAnchor.constraint(equalTo: self.view2.topAnchor, constant: 6),
            icon2.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            icon2.widthAnchor.constraint(equalToConstant: 30),
            icon2.heightAnchor.constraint(equalToConstant: 30),
            
            msgLabel.topAnchor.constraint(equalTo: self.view2.topAnchor, constant: 12),
            msgLabel.leftAnchor.constraint(equalTo: self.icon2.leftAnchor, constant: 40),
            
            setButton.topAnchor.constraint(equalTo: self.view2.topAnchor, constant: 12),
            setButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            setButton.heightAnchor.constraint(equalToConstant: 15),
            
            icon3.topAnchor.constraint(equalTo: self.icon2.topAnchor, constant: 35),
            icon3.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            icon3.widthAnchor.constraint(equalToConstant: 30),
            icon3.heightAnchor.constraint(equalToConstant: 30),
            
            conectLabel.topAnchor.constraint(equalTo: self.msgLabel.topAnchor, constant: 35),
            conectLabel.leftAnchor.constraint(equalTo: self.icon2.leftAnchor, constant: 40),
            
            setButton2.topAnchor.constraint(equalTo: self.setButton.topAnchor, constant: 35),
            setButton2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            setButton2.heightAnchor.constraint(equalToConstant: 15),
            
            view3.topAnchor.constraint(equalTo: self.view2.topAnchor, constant: 110),
            view3.leftAnchor.constraint(equalTo: self.leftAnchor),
            view3.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            view3.heightAnchor.constraint(equalToConstant: 185),
            
            icon4.topAnchor.constraint(equalTo: self.view3.topAnchor, constant: 6),
            icon4.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            icon4.widthAnchor.constraint(equalToConstant: 30),
            icon4.heightAnchor.constraint(equalToConstant: 30),
            
            countLabel.topAnchor.constraint(equalTo: self.view3.topAnchor, constant: 12),
            countLabel.leftAnchor.constraint(equalTo: self.icon4.leftAnchor, constant: 40),
            
            setIcon3.topAnchor.constraint(equalTo: self.view3.topAnchor, constant: 12),
            setIcon3.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            setIcon3.heightAnchor.constraint(equalToConstant: 15),
            
            icon5.topAnchor.constraint(equalTo: self.icon4.topAnchor, constant: 40),
            icon5.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 13),
            icon5.widthAnchor.constraint(equalToConstant: 25),
            icon5.heightAnchor.constraint(equalToConstant: 25),
            
            conversasLabel.topAnchor.constraint(equalTo: self.countLabel.topAnchor, constant: 38),
            conversasLabel.leftAnchor.constraint(equalTo: self.icon4.leftAnchor, constant: 40),
            
            setIcon4.topAnchor.constraint(equalTo: self.setIcon3.topAnchor, constant: 35),
            setIcon4.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            setIcon4.heightAnchor.constraint(equalToConstant: 15),
            
            icon6.topAnchor.constraint(equalTo: self.icon5.topAnchor, constant: 35),
            icon6.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            icon6.widthAnchor.constraint(equalToConstant: 30),
            icon6.heightAnchor.constraint(equalToConstant: 30),
            
            notificationLabel.topAnchor.constraint(equalTo: self.conversasLabel.topAnchor, constant: 38),
            notificationLabel.leftAnchor.constraint(equalTo: self.icon6.leftAnchor, constant: 40),
            
            setIcon5.topAnchor.constraint(equalTo: self.setIcon4.topAnchor, constant: 35),
            setIcon5.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            setIcon5.heightAnchor.constraint(equalToConstant: 15),
            
            icon7.topAnchor.constraint(equalTo: self.icon6.topAnchor, constant: 35),
            icon7.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            icon7.widthAnchor.constraint(equalToConstant: 30),
            icon7.heightAnchor.constraint(equalToConstant: 30),
            
            pagamentosLabel.topAnchor.constraint(equalTo: self.notificationLabel.topAnchor, constant: 38),
            pagamentosLabel.leftAnchor.constraint(equalTo: self.icon7.leftAnchor, constant: 40),
            
            setIcon6.topAnchor.constraint(equalTo: self.setIcon5.topAnchor, constant: 35),
            setIcon6.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            setIcon6.heightAnchor.constraint(equalToConstant: 15),
            
            icon8.topAnchor.constraint(equalTo: self.icon7.topAnchor, constant: 35),
            icon8.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            icon8.widthAnchor.constraint(equalToConstant: 30),
            icon8.heightAnchor.constraint(equalToConstant: 30),
            
            armazenamentoLabel.topAnchor.constraint(equalTo: self.pagamentosLabel.topAnchor, constant: 32),
            armazenamentoLabel.leftAnchor.constraint(equalTo: self.icon8.leftAnchor, constant: 40),
            
            setIcon7.topAnchor.constraint(equalTo: self.setIcon6.topAnchor, constant: 35),
            setIcon7.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            setIcon7.heightAnchor.constraint(equalToConstant: 15),
            
            view4.topAnchor.constraint(equalTo: self.view3.topAnchor, constant: 220),
            view4.leftAnchor.constraint(equalTo: self.leftAnchor),
            view4.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            view4.heightAnchor.constraint(equalToConstant: 75),
            
            icon9.topAnchor.constraint(equalTo: self.view4.topAnchor, constant: 6),
            icon9.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            icon9.widthAnchor.constraint(equalToConstant: 28),
            icon9.heightAnchor.constraint(equalToConstant: 28),
            
            ajudaLabel.topAnchor.constraint(equalTo: self.view4.topAnchor, constant: 12),
            ajudaLabel.leftAnchor.constraint(equalTo: self.icon9.leftAnchor, constant: 40),
            
            setIcon8.topAnchor.constraint(equalTo: self.view4.topAnchor, constant: 12),
            setIcon8.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            setIcon8.heightAnchor.constraint(equalToConstant: 15),
            
            icon10.topAnchor.constraint(equalTo: self.icon9.topAnchor, constant: 35),
            icon10.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            icon10.widthAnchor.constraint(equalToConstant: 30),
            icon10.heightAnchor.constraint(equalToConstant: 30),
            
            conviteLabel.topAnchor.constraint(equalTo: self.ajudaLabel.topAnchor, constant: 35),
            conviteLabel.leftAnchor.constraint(equalTo: self.icon10.leftAnchor, constant: 40),
            
            setIcon9.topAnchor.constraint(equalTo: self.setIcon8.topAnchor, constant: 35),
            setIcon9.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            setIcon9.heightAnchor.constraint(equalToConstant: 15),
        ])
    }
    
}
