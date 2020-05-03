//
//  AppReducer.swift
//  Beckon
//
//  Created by YuCheng on 2019/4/5.
//  Copyright © 2019 YuCheng. All rights reserved.
//

import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState(
//        nfcScanState: nfcScanReducer(action: action, state: state?.nfcScanState)
    )
}
//// SubReducer
//func nfcScanReducer(action: Action, state: NFCScanState?) -> NFCScanState {
//    var clsName = state?.subscribeClassName ?? ""
//    switch action {
//    case is BindingClassAction:
//        clsName
//            = (action as? BindingClassAction)?.bindingClassName ?? ""
//    default: break
//    }
//    return NFCScanState(subscribeClassName: clsName, currentAction: action)
//}
