//
//  home.swift
//  Roommaide1
//
//  Created by Gil Abraham on 5/21/17.
//  Copyright © 2017 Gil Abraham. All rights reserved.
//

import UIKit

class home: UIViewController {
    
    @IBOutlet weak var banner: UIImageView!
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //make background pic blury
        //  testdfdfd
        insertBlurView(banner, style: UIBlurEffectStyle.dark)
        //insertBlurView(uiView, style: UIBlurEffectStyle.dark)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
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
