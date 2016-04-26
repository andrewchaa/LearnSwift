//
//  ContactViewController.swift
//  PhoneSale
//
//  Created by Andrew Chaa on 26/04/2016.
//  Copyright © 2016 Andrew Chaa. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(scrollView)
    }
    
    override func viewWillLayoutSubviews() {
        scrollView.contentSize = CGSizeMake(375, 800)
    }


}
