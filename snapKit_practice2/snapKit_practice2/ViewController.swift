//
//  ViewController.swift
//  snapKit_practice2
//
//  Created by 노주영 on 2022/05/31.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var offset = 0
    var blueViewConstraint: Constraint? = nil
    
    let mybackground: UIView = {
        let view = UIView()
        view.backgroundColor = .systemYellow
        
        return view
    }()
    
    let myButton: UIButton = {
       let button = UIButton()
        button.setTitle("위로 올리기", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.backgroundColor = .white
        
        button.layer.cornerRadius = 5
        
        return button
    }()
    
    let myView: UIView = {
       let view = UIView()
        view.backgroundColor = .blue
        
        view.layer.cornerRadius = 5
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        uiCreate()
    }
    
    func uiCreate(){
        //배경
        self.view.addSubview(mybackground)
        
        mybackground.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        //버튼
        self.view.addSubview(myButton)
        
        myButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(80)
            make.width.equalTo(150)
            make.height.equalTo(50)
        }
        
        //올라가는 뷰
        self.view.addSubview(myView)
        
        myView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(myButton.snp.bottom).offset(100)
            make.width.equalTo(100)
            make.height.equalTo(50)
        }
        
    }
    


}

