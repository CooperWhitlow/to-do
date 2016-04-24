//
//  FirstViewController.swift
//  CoopsToDo
//
//  Created by Cooper Whitlow on 4/8/16.
//  Copyright © 2016 Cooper Whitlow. All rights reserved.
//

import UIKit

var taskArray: [String] = [] // placed outside class to make global scope. Is this preferred approach?

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //identify cell to reuse
        let cell = tableView.dequeueReusableCellWithIdentifier("TaskCell", forIndexPath: indexPath) as! TaskCell
        
        
        cell.taskLabel.text = taskArray[indexPath.row]
        return cell
    }
    
}

