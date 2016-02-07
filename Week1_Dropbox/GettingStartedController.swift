//
//  GettingStartedController.swift
//  Week1_Dropbox
//
//  Created by Jenn Leung on 2/6/16.
//  Copyright © 2016 Jenn Leung. All rights reserved.
//

import UIKit


class GettingStartedController: UIViewController {
        override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onFavorite(sender: UIButton) {
        sender.selected = !sender.selected
        print(sender.selected)
        let defaults = NSUserDefaults.standardUserDefaults()
   
        defaults.setObject(sender.selected, forKey: "isFileFavorited")
    }

}

