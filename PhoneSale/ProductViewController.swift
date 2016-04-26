//
//  ProductViewController.swift
//  PhoneSale
//
//  Created by Andrew Chaa on 25/04/2016.
//  Copyright © 2016 Andrew Chaa. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!

    var product : Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productNameLabel.text = product?.name
        if let pi = product?.productImage {
            productImageView.image = UIImage(named: pi)
        }
        
    }

    @IBAction func addToCartPressed(sender: AnyObject) {
        print("Button tapped")
    }
    
}
