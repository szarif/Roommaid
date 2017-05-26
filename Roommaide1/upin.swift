//
//  upin.swift
//  Roommaide1
//
//  Created by Gil Abraham on 5/21/17.
//  Copyright © 2017 Gil Abraham. All rights reserved.
//

import UIKit

class upin: UIViewController {

    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var joinButton: UIButton!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet var uiView: UIView!
    @IBOutlet weak var backgroungImage: UIImageView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.setNeedsStatusBarAppearanceUpdate()
        
        
        //make background pic blury
        insertBlurView(backgroungImage, style: UIBlurEffectStyle.light)
        insertBlurView(uiView, style: UIBlurEffectStyle.dark)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //blury background function
    func insertBlurView (_ view: UIView, style: UIBlurEffectStyle)
    {
        view.backgroundColor = UIColor.clear
        
        let blurEffect = UIBlurEffect(style: style)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        view.insertSubview(blurEffectView, at: 0)
    }
    


}
