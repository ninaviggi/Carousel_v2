//
//  LoginViewController.swift
//  Carousel
//
//  Created by Mariannina Viggi on 11/8/15.
//  Copyright © 2015 Mariannina Viggi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var fieldParentView: UIView!
    
    @IBOutlet weak var buttonParentView: UIView!
    
    @IBOutlet weak var loginNavBar: UIImageView!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var loginIndicator: UIActivityIndicatorView!
    
    let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .Alert)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 320, height: 600)
        
        scrollView.delegate = self

        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        print("content offset: \(scrollView.contentOffset.y)")
        if scrollView.contentOffset.y <= 90 {
            view.endEditing(true)
        }
    }
    
    
    func keyboardWillShow(notification: NSNotification) {
        buttonParentView.transform = CGAffineTransformMakeTranslation(0, 0)
        let maxContentOffsetY = scrollView.contentSize.height - scrollView.frame.size.height
        scrollView.contentOffset.y = maxContentOffsetY
        scrollView.scrollEnabled = true
        
    }
    
    func keyboardWillHide(notification: NSNotification) {
        buttonParentView.transform = CGAffineTransformIdentity
        scrollView.contentOffset.y = 0
        scrollView.scrollEnabled = false
    }
    
    @IBAction func didTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func didPressLogin(sender: AnyObject) {
        self.validateCredentials()
    }

    func validateCredentials() {
        if emailField.text == "ninaviggi@gmail.com" && passwordField.text == "Carryonward2020" {
            loginIndicator.startAnimating()
            
            delay(2, closure: { () -> () in
                self.performSegueWithIdentifier("tutorialSegue", sender: nil)
            })
        }
        else if emailField.text == "" || passwordField.text == "" {
            
            let emptyAlert = UIAlertController(title: "Almost there,", message: "Please type in your e-mail and password!", preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in
            })
            
            emptyAlert.addAction(okAction)
            
            presentViewController(emptyAlert, animated: true, completion: nil)
        }
        else {
            loginIndicator.startAnimating()
            delay(2, closure: { () -> () in
                
                let alert = UIAlertController(title: "Incorrect Login", message: "Please check email and password to make sure they are correct.", preferredStyle: UIAlertControllerStyle.Alert)
                
                let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in
                    self.loginIndicator.stopAnimating()
                })
                
                alert.addAction(okAction)
                
                self.presentViewController(alert, animated: true, completion: nil)
            })
            
        }
    }

    @IBAction func didTapBackButton(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }

    override func viewWillAppear(animated: Bool) {
        let transform = CGAffineTransformMakeScale(0.2, 0.2)
        loginNavBar.transform = transform
        fieldParentView.transform = transform
        loginNavBar.alpha = 0
        fieldParentView.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.3) { () -> Void in
            self.fieldParentView.transform = CGAffineTransformIdentity
            self.loginNavBar.transform = CGAffineTransformIdentity
            self.fieldParentView.alpha = 1
            self.loginNavBar.alpha = 1
        }
    }
    
}
