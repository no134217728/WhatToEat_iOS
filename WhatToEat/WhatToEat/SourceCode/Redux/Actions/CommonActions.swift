//
//  CommonActions.swift
//  WhatToEat
//
//  Created by YuCheng on 2020/5/9.
//  Copyright © 2020 YuCheng. All rights reserved.
//

import UIKit
import ReSwift

struct RegisterStateAction: Action {
    let subscriber: String
}
struct SendParcelAction: Action {
    var senderId = ""
    var recipientId = ""
    let parcel: Action
}
