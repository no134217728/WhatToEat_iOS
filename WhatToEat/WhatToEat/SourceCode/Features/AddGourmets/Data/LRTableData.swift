//
//  LRTableData.swift
//  WhatToEat
//
//  Created by YuCheng on 2020/5/11.
//  Copyright © 2020 YuCheng. All rights reserved.
//

import UIKit

struct LRTextLabelCell: LRTableCellProtocol {
    var labelText = ""
    let cellHeight : CGFloat = 48.0
}

struct LRTextFieldCell: LRTableCellProtocol {
    var placeHolder = ""
    var inputText = ""
    let cellHeight : CGFloat = 48.0
}

protocol LRTableCellProtocol {
}
