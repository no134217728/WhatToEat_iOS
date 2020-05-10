//
//  LRTableData.swift
//  Juksy_Holic
//
//  Created by YuCheng on 2019/6/16.
//  Copyright © 2019 YuCheng. All rights reserved.
//

import UIKit

struct BuildFileData {

    let sectionTitles : Array<String> = ["商品資訊","規格資訊","生產資訊","鑑定資訊","所有權","銷售資訊"]
    let leftTitles : Array<Array<String>> = [
        ["上傳圖片","商品名稱","商品分類","商品編號","品牌","商品序號"],
        ["顏色","尺寸","狀態"],
        ["廠商編號","產地","生產日期"],
        ["鑑定師","檢驗日期","特殊歷程"],
        ["持有人","地址","所在地"],
        ["販售方式","原價","售價","建立NFT"]
    ]
//    let cellDisplayTypes : Array<Array<LRCellType>> = [
//        [.CollectionView,.TextField,.SelectionArrow,.TextField,.TextField,.TextField],
//        [.TextField,.TextField,.SelectionArrow],
//        [.TextField,.TextField,.TextLabel],
//        [.TextField,.TextLabel,.TextField],
//        [.TextField,.TextField,.TextField],
//        [.SelectionArrow,.PriceField,.PriceField,.Button]
//    ]
    let dataSource : Array<Array<CellTypeProtocol>> = [
        [CellCollectionData(dataSource: []),CellTextField(placeHolder: "請輸入80字以內", inputText: ""),CellSelectionArrow(),
         CellTextField(placeHolder: "請輸入30字以內", inputText: ""),CellTextField(placeHolder: "請輸入20字以內", inputText: ""),CellTextField(placeHolder: "請輸入50字以內", inputText: "")
        ],
        [CellTextField(placeHolder: "請輸入20字以內", inputText: ""),CellTextField(placeHolder: "請輸入10字以內", inputText: ""),CellSelectionArrow()],
        [CellTextField(placeHolder: "請輸入30字以內", inputText: ""),CellTextField(placeHolder: "請輸入20字以內", inputText: ""),CellTextLabel(labelText: "2019/01/01")],
        [CellTextField(placeHolder: "請輸入80字以內", inputText: ""),CellTextLabel(labelText: "2019/01/01"),CellTextField(placeHolder: "請輸入20字以內", inputText: "")],
        [CellTextField(placeHolder: "請輸入20字以內", inputText: ""),CellTextField(placeHolder: "請輸入20字以內", inputText: ""),CellTextField(placeHolder: "請輸入80字以內", inputText: "")],
        [CellSelectionArrow(),CellPriceField(placeHolder: "請輸入數字(最高10位數)", inputText: ""),CellPriceField(placeHolder: "請輸入數字(最高10位數)", inputText: ""),CellTextLabel(labelText: "")]
    ]

}
struct ShowRoomData {
    let sectionTitles : Array<String> = ["商品資訊","規格資訊","生產資訊","鑑定資訊","所有權","銷售資訊"]
    let leftTitles : Array<Array<String>> = [
        ["","商品名稱","商品分類","商品編號","品牌","商品序號"],
        ["顏色","尺寸","狀態"],
        ["廠商編號","產地","生產日期"],
        ["鑑定師","檢驗日期","特殊歷程"],
        ["持有人","地址","所在地"],
        ["販售方式","原價","售價","建立NFT"]
    ]
    let dataSource : Array<Array<CellTypeProtocol>> = [
        [CellCollectionData(dataSource: []),CellTextLabel(labelText: "adidas Ultra Boost 4.0 Black White Speckle"),CellTextLabel(labelText: "鞋子 > adidas > 男鞋"),CellTextLabel(labelText: "F36153"),CellTextLabel(labelText: "adidas"),CellTextLabel(labelText: "HSSASDFG01213_JA!YHSA000123")],
        [CellTextLabel(labelText: "F36153橘色"),CellTextLabel(labelText: "US 10"),CellTextLabel(labelText: "全新")],
        [CellTextLabel(labelText: "PWC681-001"),CellTextLabel(labelText: "China"),CellTextLabel(labelText: "2019  /  01  /  01")],
        [CellTextLabel(labelText: "史洛3號（銀級鑑定師）"),CellTextLabel(labelText: "2019  /  01  /  01"),CellTextLabel(labelText: "周杰倫親手摸過，穿著過，在演唱會上抽出一名粉絲，簽上特殊簽名．大部分明星的簽名感覺都繞得非常複雜，相比之下，張若昀的簽名就簡單得多了。他的名字筆順說不上複雜，但是也不簡單，而張若昀幾筆就繞完了")],
        [CellTextLabel(labelText: "Holic.co"),CellTextLabel(labelText: "台灣台北市中正區羅斯福路2段5樓之一"),CellTextLabel(labelText: "Holic銀級倉庫")],
        [CellTextLabel(labelText: "線上抽籤販售"),CellTextLabel(labelText: "NT$ 8,890"),CellTextLabel(labelText: "NT$ 12,890")]
    ]
}
struct CellCollectionData : CellTypeProtocol {
    var dataSource : Array<Any>? = nil
    let cellHeight : CGFloat = 106.0

}
struct CellTextField: CellTypeProtocol {
    var placeHolder = ""
    var inputText = ""
    let cellHeight : CGFloat = 48.0
}
struct CellTextLabel: CellTypeProtocol {
    var labelText = ""
    let cellHeight : CGFloat = 48.0
}
struct CellPriceField: CellTypeProtocol {
    var placeHolder = ""
    var inputText = ""
    let cellHeight : CGFloat = 48.0
}
struct CellSelectionArrow: CellTypeProtocol {
    let labelText = "請選擇"
    let cellHeight : CGFloat = 48.0
}

protocol CellTypeProtocol {
}
/*
protocol Convertable: Codable {

}

// Convert struct to dictionary
extension Convertable {
    func convertToDict() -> Dictionary<String, Any>? {
        var dict: Dictionary<String, Any>? = nil

        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(self)
            dict = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? Dictionary<String, Any>
        } catch {
            print(error)
        }

        return dict
    }
}*/
