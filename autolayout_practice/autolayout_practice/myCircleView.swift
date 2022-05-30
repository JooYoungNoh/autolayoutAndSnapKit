//
//  myCircleView.swift
//  autolayout_practice
//
//  Created by 노주영 on 2022/05/31.
//

import UIKit

class MyCircleView: UIView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.backgroundColor = UIColor.systemYellow.cgColor
    }
    
}
