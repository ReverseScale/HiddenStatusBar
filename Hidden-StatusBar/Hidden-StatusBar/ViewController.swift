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
    
    @IBAction func clicked(_ sender: AnyObject) {
        isHidden = !isHidden
        UIView.animate(withDuration: 0.5, animations: { () -> Void in
            self.setNeedsStatusBarAppearanceUpdate()
        }) 
    }
    override var preferredStatusBarUpdateAnimation : UIStatusBarAnimation {
        return UIStatusBarAnimation.slide
    }
    override var prefersStatusBarHidden : Bool {
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

