//
//  Welcome2ViewController.swift
//  Week1_Dropbox
//
//  Created by Jenn Leung on 2/7/16.
//  Copyright © 2016 Jenn Leung. All rights reserved.
//

import UIKit

class Welcome2ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Left Swipe
        let leftRecognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: "swipeLeft:")
        leftRecognizer.direction = .Left
        self.view.addGestureRecognizer(leftRecognizer)
        
        //Right Swipe
        let rightRecognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: "swipeRight:")
        rightRecognizer.direction = .Right
        self.view.addGestureRecognizer(rightRecognizer)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func swipeLeft(recognizer : UISwipeGestureRecognizer) {
        print(recognizer.direction)
        self.performSegueWithIdentifier("secondtoThirdSegue", sender: self)
    }
    
    func swipeRight(recognizer : UISwipeGestureRecognizer) {
        print(recognizer.direction)
        self.performSegueWithIdentifier("secondtofirstSegue", sender: self)
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
