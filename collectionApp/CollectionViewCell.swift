//
//  CollectionViewCell.swift
//  collectionApp
//
//  Created by Damirka on 29.10.2022.
//

import UIKit

protocol DisplaysDetailCollectionViewCell: UICollectionViewCell {
    func configure(with viewModel: ImageModel)
}

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    
}
