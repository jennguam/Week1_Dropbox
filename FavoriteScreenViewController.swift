//
//  FavoriteScreenViewController.swift
//  Week1_Dropbox
//
//  Created by Jenn Leung on 2/6/16.
//  Copyright © 2016 Jenn Leung. All rights reserved.
//

import UIKit

class FavoriteScreenViewController: UIViewController {

    @IBOutlet weak var emptyFav: UIImageView!
    @IBOutlet weak var singleFave: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print ("in load")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let defaults = NSUserDefaults.standardUserDefaults()
        if defaults.boolForKey("isFileFavorited") == false {
            emptyFav.alpha = 1
            singleFave.alpha = 0
        }  else {
            singleFave.alpha = 1
            emptyFav.alpha = 0
        }
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
