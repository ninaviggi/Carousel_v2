//
//  SettingsViewController.swift
//  Carousel
//
//  Created by Mariannina Viggi on 11/8/15.
//  Copyright © 2015 Mariannina Viggi. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var closeSettingsButton: UIButton!
    @IBOutlet weak var signOutSettingsButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.contentSize = CGSize(width: 320, height: 695)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeSettingsTapped(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func signOutIsTapped(sender: AnyObject) {
        
        let signOutAlert = UIAlertController(title: "", message: "Are your sure you want to sign out?", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        let logoutAction = UIAlertAction(title: "Log Out", style: .Destructive) { (action) in
            self.performSegueWithIdentifier("logoutSegue", sender: nil)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            // handle case of user canceling. Doing nothing will dismiss the view.
        }
        
        signOutAlert.addAction(logoutAction)
        signOutAlert.addAction(cancelAction)
        
        
        presentViewController(signOutAlert, animated: true, completion: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
