//
//  TimelineViewController.swift
//  Carousel
//
//  Created by Mariannina Viggi on 11/8/15.
//  Copyright © 2015 Mariannina Viggi. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = CGSize(width: 320, height: 1600)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
