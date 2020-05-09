//
//  SignViewController.swift
//  WhatToEat
//
//  Created by YuCheng on 2020/5/9.
//  Copyright © 2020 YuCheng. All rights reserved.
//

import UIKit
import ReSwift

class SignViewController: UIViewController {

    var defaultTemplate: DefaultTemplate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appStore.dispatch(RegisterStateAction(subscriber: String(describing: type(of: self))))
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.defaultTemplate = self.parent as? DefaultTemplate
        self.defaultTemplate?.stateDelegate = self
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.defaultTemplate?.stateDelegate = nil
    }

    // MARK: - actions
    @IBAction func loginButtonClickAction(_ sender: UIButton) {
        appStore.dispatch(SignAppAction())
    }
}

extension SignViewController: DefaultTemplateDelegate {
    func subscribeDefaultTemplateState(state: DefaultTemplateState) {
        switch state.currentAction {
        case _ as SignAppAction:
            let toVC = self.storyboard?.instantiateViewController(identifier: "OptionalViewController")
            defaultTemplate?.basePushToViewController(toVC!, Animated: true)
        default: break
        }
    }
}
