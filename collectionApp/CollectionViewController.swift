//
//  CollectionViewController.swift
//  collectionApp
//
//  Created by Damirka on 29.10.2022.
//

import UIKit

protocol DisplaysViewCell: UICollectionViewCell {
    func configure(with viewModel: ImageModel)
}


class CollectionViewController: UICollectionViewController {
    
    private let reuseIdentifier = "Cell"

    private var images : [ImageModel] = [ImageModel(image: "ice_wasteland.jpeg", label: "Ice Wasteland"),
                                   ImageModel(image: "tundra.jpeg", label: "Tundra"),
                                   ImageModel(image: "forest.jpeg", label: "Forest"),
                                   ImageModel(image: "jungle.jpeg", label: "Jungle"),
                                   ImageModel(image: "tropics.jpeg", label: "Tropics"),
                                   ImageModel(image: "desert.jpeg", label: "Desert")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
        
    }
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return images.count
        
    }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dataCell", for: indexPath) as! CollectionViewCell
            
        let image = images[indexPath.row]
        cell.imageView.image = UIImage(named: image.image)
        cell.imageLabel.text = image.label
            
        return cell
        
        }
    }
}

extension CollectionViewController: DisplaysViewCell {
    
    func configure(with viewModel: ImageModel) {
        image?.imageAsset = viewModel.image
        label.text = viewModel.label
    }
}
