//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Mariannina Viggi on 11/8/15.
//  Copyright © 2015 Mariannina Viggi. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var pageControl: UIPageControl!

    @IBOutlet weak var takeForSpinButton: UIImageView!
    
    @IBOutlet weak var backUpSwitch: UISwitch!
    
    @IBOutlet weak var tryNowButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        takeForSpinButton.hidden = true
        takeForSpinButton.alpha = 0
        backUpSwitch.hidden = true
     
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        scrollView.delegate = self
        pageControl.numberOfPages = 4
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func pageControlDidPage(sender: AnyObject) {
        let xOffset = scrollView.bounds.width * CGFloat(pageControl.currentPage)
        scrollView.setContentOffset(CGPointMake(xOffset,0) , animated: true)
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.bounds.width)
        
        if pageControl.currentPage == 3 {
            pageControl.hidden = true
            takeForSpinButton.hidden = false
            takeForSpinButton.alpha = 1
            backUpSwitch.hidden = false
        }
        else {
            pageControl.hidden = false
            takeForSpinButton.alpha = 0
            backUpSwitch.hidden = true
        }
    }
    

}
