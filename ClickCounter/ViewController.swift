//
//  ViewController.swift
//  ClickCounter
//
//  Created by Sudeep Agrawal on 5/15/16.
//  Copyright © 2016 Agrawal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label : UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //Label
        let label = UILabel()
        label.frame = CGRectMake(150,150,60,60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        //Button - Click to Add
        let button = UIButton()
        button.frame = CGRectMake(150, 250, 100, 60)
        button.setTitle("Click to Add", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        //Button - Click to Add
        let button2 = UIButton()
        button2.frame = CGRectMake(150, 320, 180, 60)
        button2.setTitle("Click to Decrement", forState: .Normal)
        button2.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button2)
        
        button2.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
    }

    func incrementCount()
    {
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    func decrementCount()
    {
        self.count -= 1
        self.label.text = "\(self.count)"
    }
}

