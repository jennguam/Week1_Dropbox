//
//  CreateAccountFormViewController.swift
//  Week1_Dropbox
//
//  Created by Jenn Leung on 2/7/16.
//  Copyright © 2016 Jenn Leung. All rights reserved.
//

import UIKit

class CreateAccountFormViewController: UIViewController {
    
    var initialY: CGFloat!
    var offset: CGFloat!
    @IBOutlet weak var fieldParentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialY = fieldParentView.frame.origin.y
        offset = -50
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        fieldParentView.frame.origin.y = initialY + offset
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        fieldParentView.frame.origin.y = initialY

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
