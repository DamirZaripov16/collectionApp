//
//  ViewController.swift
//  collectionApp
//
//  Created by Damirka on 29.10.2022.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    private var images : [ImageModel] = [ImageModel(image: "ice_wasteland.jpeg"),
                                         ImageModel(image: "tundra.jpeg"),
                                         ImageModel(image: "forest.jpeg"),
                                         ImageModel(image: "jungle.jpeg"),
                                         ImageModel(image: "tropics.jpeg"),
                                         ImageModel(image: "desert.jpeg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBOutlet var collectionView: UICollectionView!
    

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 2
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        let image = images[indexPath.row]
        cell.imageView.image = UIImage(named: image.image)
        
        return cell
        
    }
    
    
}
