//
//  ViewController.swift
//  JLPagedDemo
//
//  Created by JJLewis on 01/19/2018.
//  Copyright (c) 2018 JJLewis. All rights reserved.
//

import UIKit
import JLPagedDemo

class ViewController: UIViewController {
    
    @IBOutlet var demo:JLPagedDemoCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let page1 = JLPageTopTitleAndImage.instanceFromNib()
        page1.titleLabel.text = "Page 1"
        page1.imageview.backgroundColor = .red
        let page2 = JLPageTopTitleAndImage.instanceFromNib()
        page2.titleLabel.text = "Page 2"
        page2.imageview.backgroundColor = .blue
        
        demo.pages = [page1.page, page2.page]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

