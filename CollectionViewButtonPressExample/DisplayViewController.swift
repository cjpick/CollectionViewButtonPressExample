//
//  DisplayViewController.swift
//  CollectionViewButtonPressExample
//
//  Created by Christopher Pick on 11/28/16.
//  Copyright © 2016 Christopher Pick. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var show:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        display.text = show
    }
    
    
}
