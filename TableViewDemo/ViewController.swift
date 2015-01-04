//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Yosemite on 1/3/15.
//  Copyright (c) 2015 Yosemite. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    // Define some tuples as an array
    let devCourses = [("iOS Book 1", "John A"),
                      ("iOS Book 2", "John B"),
                      ("iOS Book 3", "John C"),
                      ("iOS DVD A", "Doe 1"),
                      ("iOS DVD B", "Doe 2"),
                      ("iOS DVD C", "Doe 3"),
                      ("iOS Song X1", "Alice AA"),
                      ("iOS Song X2", "Alice BB"),
                      ("iOS Song X3", "Alice CC")]

    let webCourses = [("OSX Book 1", "John A"),
        ("OSX Book 2", "John B"),
        ("OSX Book 3", "John C"),
        ("OSX DVD A", "Doe 1"),
        ("OSX DVD B", "Doe 2"),
        ("OSX DVD C", "Doe 3"),
        ("OSX Song X1", "Alice AA"),
        ("OSX Song X2", "Alice BB"),
        ("OSX Song X3", "Alice CC")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // +--- UITableViewDataSource Required Methods ---+
    // +    - Supply data source and configure table  +
    // +----------------------------------------------+
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section  == 0 {
            return devCourses.count
        } else {
            return webCourses.count
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("myPrototypeCell", forIndexPath: indexPath) as UITableViewCell
        
        if indexPath.section == 0 {
            let (courseTitle, courseAuthor) = devCourses[indexPath.row]
            cell.textLabel?.text = courseTitle
        } else {
            let (courseTitle, courseAuthor) = webCourses[indexPath.row]
            cell.textLabel?.text = courseTitle
        }
        
        return cell
    }
    
    // +--- UITableViewDataSource Optional Methods ---+
    // +    - for customization                       +
    // +----------------------------------------------+
    
    // Do NOT forget to select "group" in TableView Style
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "iOS Courses"
        } else {
            return "OSX Courses"
        }
    }
}

