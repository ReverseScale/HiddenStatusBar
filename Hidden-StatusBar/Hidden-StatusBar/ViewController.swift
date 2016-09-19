//
//  ViewController.swift
//  Hidden-StatusBar
//
//  Created by StevenXie on 16/7/20.
//  Copyright © 2016年 StevenXie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isHidden:Bool = false
    @IBAction func clicked(sender: AnyObject) {
        isHidden = !isHidden
        UIView.animateWithDuration(0.5) { () -> Void in
            self.setNeedsStatusBarAppearanceUpdate()
        }
    }
    override func preferredStatusBarUpdateAnimation() -> UIStatusBarAnimation {
        return UIStatusBarAnimation.Slide
    }
    override func prefersStatusBarHidden() -> Bool {
        return isHidden
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

