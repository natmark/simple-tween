//
//  ViewController.swift
//  simple-tweenExample
//
//  Created by AtsuyaSato on 2017/12/03.
//  Copyright © 2017年 Atsuya Sato. All rights reserved.
//

import UIKit
import simple_tween

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Tween.animateTo(fromValue: 0, toValue: 10, duration: 1.0, options: .curveEaseIn, animations: { value in
                print(value)
            }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

