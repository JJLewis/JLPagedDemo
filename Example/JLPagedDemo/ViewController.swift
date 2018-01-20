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
    
    @IBAction func startautoloop(_ sender: UIButton) {
        demo.autoloopAtInterval(1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let page1 = JLPageTopTitleAndImage.instanceFromNib()
        page1.titleLabel.text = "Page 1"
        page1.imageview.backgroundColor = .red
        let page2 = JLPageTopTitleAndImage.instanceFromNib()
        page2.titleLabel.text = "Page 2"
        page2.imageview.backgroundColor = .blue
        let page3 = JLPageTopTitleAndImage.instanceFromNib()
        page3.titleLabel.text = "Page 3"
        page3.imageview.backgroundColor = .green
        let page4 = JLPageTopTitleAndImage.instanceFromNib()
        page4.titleLabel.text = "Page 4"
        page4.imageview.backgroundColor = .purple
        
        demo.pages = [page1.page, page2.page, page3.page, page4.page]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

