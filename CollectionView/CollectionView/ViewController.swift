//
//  ViewController.swift
//  CollectionView
//
//  Created by Administrador  on 31/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let categories: [String] = ["Beauty and hygiene", "Bombiniere", "Cleaning", "Drinks", "Home",                                     "Seasonings", "Grains", "Frozen", "Desserts", "Vegetables", "Sauces",                                 "PetShop", "Others", "Bakery", "Breakfast", "Canned"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
    }


}

extension ViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "defaultCategoryCell", for: indexPath) as! CategoryCollectionViewCell
        
        cell.background.backgroundColor = UIColor.randomColor()
        cell.title.text = categories[indexPath.row]
        cell.layer.cornerRadius = 16
        return cell
    }
    
    
}

