//
//  CollectionViewController.swift
//  CollectionViewButtonPressExample
//
//  Created by Christopher Pick on 11/28/16.
//  Copyright © 2016 Christopher Pick. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var data = ["Apple", "Bannana", "Cherry"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        
        title = "Fruit"
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Display", let show = sender as? String, let destination = segue.destination as? DisplayViewController {
            destination.show = show
        }
    }
}

extension CollectionViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.label.text = data[indexPath.row]
        cell.callBack = displayCallBack

        return cell
    }
    
    func displayCallBack(_ cell: UICollectionViewCell) {
        if let indexPath = collectionView.indexPath(for: cell) {
            let show = data[indexPath.row]
            performSegue(withIdentifier: "Display", sender: show)
        }
    }
    
}
