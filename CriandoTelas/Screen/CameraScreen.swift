//
//  CameraScreen.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 25/04/22.
//

import UIKit
class CameraScreen: UIView {
    
    
    lazy var statusImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(named: "destaque5")
        imagem.tintColor = .systemBlue
        return imagem
    }()
    
    lazy var circleImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "multiply")
        imagem.tintColor = .white
        return imagem
    }()
    
    lazy var flashImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "bolt.slash.fill")
        imagem.tintColor = .white
        return imagem
    }()
    
    lazy var photoImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "photo")
        imagem.tintColor = .white
        return imagem
    }()
    
    lazy var cameraImage: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(systemName: "arrow.triangle.2.circlepath.camera.fill")
        imagem.tintColor = .white
        return imagem
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.statusImage)
        self.addSubview(self.circleImage)
        self.addSubview(self.flashImage)
        self.addSubview(self.photoImage)
        self.addSubview(self.cameraImage)
        setUpConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            statusImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            statusImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            statusImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            statusImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -2),
            
            circleImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            circleImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            
            flashImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            flashImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            photoImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 40),
            photoImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40),
            
            cameraImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            cameraImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40),
        ])
    }
    
}
