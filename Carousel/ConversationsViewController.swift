//
//  ConversationsViewController.swift
//  Carousel
//
//  Created by Mariannina Viggi on 11/8/15.
//  Copyright © 2015 Mariannina Viggi. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {
    @IBOutlet weak var conversationsButtonBack: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    
    @IBAction func conversationDidPress(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    }


}
