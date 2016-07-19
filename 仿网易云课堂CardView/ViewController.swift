//
//  ViewController.swift
//  仿网易云课堂CardView
//
//  Created by 王笛 on 16/7/18.
//  Copyright © 2016年 王笛iOS.Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let frame = CGRect(x: 0, y: 0, width: 600, height: 1000)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let view = CardView(frame: frame, items: 5, target: self)
        self.view.addSubview(view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

