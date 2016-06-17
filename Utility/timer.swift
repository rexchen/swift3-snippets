//
//  ViewController.swift
//  timer
//
//  Created by Rex on 6/17/16.
//  Copyright © 2016 huijun.org. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    func result() {
        print("Called")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(result), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}