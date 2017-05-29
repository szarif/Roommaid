//
//  home.swift
//  Roommaide1
//
//  Created by Gil Abraham on 5/21/17.
//  Copyright © 2017 Gil Abraham. All rights reserved.
//

import UIKit

class GroupsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var banner: UIView!
    
    @IBOutlet weak var tableView: UITableView!
    
    var groups: [String] = ["Group1", "Group2", "Group3"]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //make background pic blury
        insertBlurView(banner, style: UIBlurEffectStyle.dark)
        
        //self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "groupCell")!
        
        cell.textLabel?.text = self.groups[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
    
    
    
    

    //blury background function
    func insertBlurView (_ view: UIView, style: UIBlurEffectStyle)
    {
        let blurEffect = UIBlurEffect(style: style)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        view.insertSubview(blurEffectView, at: 0)
    }
}
