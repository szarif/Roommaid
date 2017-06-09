//
//  home.swift
//  Roommaide1
//
//  Created by Gil Abraham on 5/21/17.
//  Copyright © 2017 Gil Abraham. All rights reserved.
//

import UIKit

class GroupsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var searchController = UISearchController()
    
    @IBOutlet weak var banner: UIView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var profilePic: UIImageView!
    
    var groups: [String] = ["Group1", "Group2", "Group3", "Group4"]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //rounded profile pic
        self.profilePic.layer.cornerRadius = self.profilePic.frame.size.width / 2;
        self.profilePic.clipsToBounds = true;
        
        //searchBar(searchController)
        searchController = UISearchController(searchResultsController: nil)
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.dimsBackgroundDuringPresentation = true
        searchController.searchBar.placeholder = NSLocalizedString("Search Groups", comment: "")
        definesPresentationContext = true
        tableView.tableHeaderView = searchController.searchBar
        tableView.contentOffset = CGPoint(x: 0, y: searchController.searchBar.frame.size.height)
 
        
        
        
        //make background pic blury
       // insertBlurView(banner, style: UIBlurEffectStyle.dark)
       
        
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
    
    
    
    func searchBar(_ searchController: UISearchController){
        
        self.searchController = UISearchController(searchResultsController: nil)
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.dimsBackgroundDuringPresentation = true
        searchController.searchBar.placeholder = NSLocalizedString("Search Groups", comment: "")
        definesPresentationContext = true
        tableView.tableHeaderView = searchController.searchBar
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
