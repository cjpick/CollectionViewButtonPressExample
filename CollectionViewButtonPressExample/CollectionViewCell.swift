//
//  CollectionViewCell.swift
//  CollectionViewButtonPressExample
//
//  Created by Christopher Pick on 11/28/16.
//  Copyright © 2016 Christopher Pick. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var callBack: (UICollectionViewCell)->Void = {_ in }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        callBack(self)
    }
    
    
    
}
