//
//  IntroViewController.swift
//  Carousel
//
//  Created by Mariannina Viggi on 11/8/15.
//  Copyright © 2015 Mariannina Viggi. All rights reserved.
//


import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var tile1: UIImageView!
    
    @IBOutlet weak var tile2: UIImageView!
    
    @IBOutlet weak var tile3: UIImageView!
    
    @IBOutlet weak var tile4: UIImageView!
    
    @IBOutlet weak var tile5: UIImageView!
    
    @IBOutlet weak var tile6: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        scrollView.contentSize = CGSize(width: 320, height: 1136)
        
        scrollView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    
    }
    
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        let offset = Float(scrollView.contentOffset.y)
        let tx = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        let ty = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        
        let scale = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        let rotation = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tile1.transform = CGAffineTransformMakeTranslation(tx, ty)
        tile1.transform = CGAffineTransformScale(tile1.transform, scale, scale)
        tile1.transform = CGAffineTransformRotate(tile1.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        tile2.transform = CGAffineTransformMakeTranslation(tx, ty)
        tile2.transform = CGAffineTransformScale(tile1.transform, scale, scale)
        tile2.transform = CGAffineTransformRotate(tile1.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        tile3.transform = CGAffineTransformMakeTranslation(tx, ty)
        tile3.transform = CGAffineTransformScale(tile1.transform, scale, scale)
        tile3.transform = CGAffineTransformRotate(tile1.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        tile4.transform = CGAffineTransformMakeTranslation(tx, ty)
        tile4.transform = CGAffineTransformScale(tile1.transform, scale, scale)
        tile4.transform = CGAffineTransformRotate(tile1.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        tile5.transform = CGAffineTransformMakeTranslation(tx, ty)
        tile5.transform = CGAffineTransformScale(tile1.transform, scale, scale)
        tile5.transform = CGAffineTransformRotate(tile1.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        tile6.transform = CGAffineTransformMakeTranslation(tx, ty)
        tile6.transform = CGAffineTransformScale(tile1.transform, scale, scale)
        tile6.transform = CGAffineTransformRotate(tile1.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        
    }

}
