//
//  AvatarCell.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 25/04/22.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    
    static let identifier = "AvatarCell"
    
    let imagAvatar: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.backgroundColor = .blue
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imagAvatar)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imagAvatar.frame = contentView.frame
    }
    
    func configureCell(imageName: String) {
        imagAvatar.image = UIImage(named: imageName)
    }
}
