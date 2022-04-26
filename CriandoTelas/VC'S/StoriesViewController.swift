//
//  AvatarViewController.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 25/04/22.
//

import UIKit
class StoriesViewController: UIViewController, UICollectionViewDataSource {
   
    var collection: UICollectionView?
    
    let stories: [String] = ["destaque10", "destaque9", "destaque3", "destaque7", "destaque1", "destaque6", "destaque2", "destaque8", "destaque9", "destaque10", "destaque11", "destaque12", "destaque3", "destaque2", "destaque12", "destaque2", "destaque6", "destaque10", "destaque9", "destaque3", "destaque5", "destaque1"]
    
    override func viewDidLoad() {
    super.viewDidLoad()

        
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 80, height: 80)
        layout.sectionInset = UIEdgeInsets(top: 0.0, left: 5.0, bottom: 0.0, right: 45.0)
        
        
        
        collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection?.backgroundColor = .clear
        collection?.dataSource = self
        collection?.showsHorizontalScrollIndicator = false
        collection?.register(AvatarCell.self, forCellWithReuseIdentifier: AvatarCell.identifier)

        
        
        
        guard let myCollection = collection else {return}
    
        
        view.addSubview(myCollection)

    }

  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stories.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AvatarCell.identifier, for: indexPath) as! AvatarCell
        cell.configureCell(imageName: stories[indexPath.row])
       return cell
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collection?.frame = CGRect(x: 0, y: 600, width: view.frame.size.width, height: 75)
       
    }
    
}
