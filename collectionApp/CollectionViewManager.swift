//
//  CollectionViewManager.swift
//  collectionApp
//
//  Created by Damirka on 04.11.2022.
//

import UIKit

protocol CollectionViewManagerDelegate: UIViewController {
    
    func handleCollectionViewCellTap(with row: ImageModel)
}

protocol ManagesCollectionView: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func configure(with rows: [ImageModel])
    
    var delegate: CollectionViewManagerDelegate? { get set }
}

final class CollectionViewManager: NSObject {
    
    weak var delegate: CollectionViewManagerDelegate?
    private var images : [ImageModel] = []
}

extension CollectionViewManager {
    
    func configure(with images: [ImageModel]) {
        self.images = images
    }
}
