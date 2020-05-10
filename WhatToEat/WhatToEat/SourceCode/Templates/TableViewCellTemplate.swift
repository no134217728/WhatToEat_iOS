//
//  TableViewCellTemplate.swift
//  WhatToEat
//
//  Created by YuCheng on 2020/5/10.
//  Copyright © 2020 YuCheng. All rights reserved.
//

import UIKit

enum LRCellType : Int {
    case TextLabel,TextField,Button
}
class LRTableViewCell: UITableViewCell {

    @IBOutlet weak var cellLeftView: UIView!
    @IBOutlet weak var cellLeftLabel: UILabel!
    @IBOutlet weak var cellRightView: UIView!

    private var leftContentView : UIView? = nil
    private var rigthtContentView : UIView? = nil
    var cellType : LRCellType = .TextLabel
    var indexPath : IndexPath? = nil
    var cellProtocol: LRTableCellProtocol?

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        switch cellType {
        case .TextLabel:
            createTextLabelOnCell()
        case .TextField:
            createTextFieldOnCell()
        default: break
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        rigthtContentView?.removeFromSuperview()
    }
    private func createTextLabelOnCell() {
        if cellRightView.subviews.count == 0 {
            let data = cellProtocol as? LRTextLabelCell
            let textLabel = UILabel()
            textLabel.translatesAutoresizingMaskIntoConstraints = false
            textLabel.textColor = UIColor(red: 74.0/255.0, green: 74.0/255.0, blue: 74.0/255.0, alpha: 1.0)
            textLabel.font = UIFont.systemFont(ofSize: 15.0)
            textLabel.text = data?.labelText
            //textLabel.textAlignment = .left
            cellRightView.addSubview(textLabel)
            cellRightView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[textLabel]-|", options: [], metrics: nil, views: ["textLabel": textLabel]))
            cellRightView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-[textLabel]-|", options: [], metrics: nil, views: ["textLabel": textLabel]))
            rigthtContentView = textLabel
        }
    }
    
    private func createTextFieldOnCell() {
        if cellRightView.subviews.count == 0 {
            let data = cellProtocol as? LRTextFieldCell
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            if data?.inputText.isEmpty == false {
                textField.text = data?.inputText
            } else {
                textField.placeholder = data?.placeHolder
            }
            cellRightView.addSubview(textField)
            cellRightView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[textField]-|", options: [], metrics: nil, views: ["textField": textField]))
            cellRightView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-[textField]-|", options: [], metrics: nil, views: ["textField": textField]))
            rigthtContentView = textField
        }
    }

}

class ButtonTableViewCell: UITableViewCell {

    @IBOutlet weak var cellButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        cellButton.layer.cornerRadius = 4.0
    }

}
