//
//  ViewController.swift
//  WhatToEat
//
//  Created by YuCheng on 2020/5/3.
//  Copyright © 2020 YuCheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let toStoryBoard = UIStoryboard(name: "Entrance", bundle: nil)
        let toVC = toStoryBoard.instantiateViewController(withIdentifier: "DefaultTemplate") as? DefaultTemplate
        toVC?.childVC = toStoryBoard.instantiateViewController(withIdentifier: "SignViewController")
        self.navigationController?.show(toVC!, sender: nil)
    }


}

