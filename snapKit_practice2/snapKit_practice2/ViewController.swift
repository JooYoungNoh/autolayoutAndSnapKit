//
//  ViewController.swift
//  snapKit_practice2
//
//  Created by 노주영 on 2022/05/31.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var offset = 100
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
        self.myButton.addTarget(self, action: #selector(moveView(_:)), for: .touchUpInside)
        
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
            make.width.equalTo(100)
            make.height.equalTo(50)
            
            self.blueViewConstraint = make.top.equalTo(myButton.snp.bottom).offset(100).constraint
        }
        
    }
    
    @objc func moveView(_ sender: UIButton){
        self.offset -= 20
        
        self.blueViewConstraint?.update(offset: offset)
        
        UIViewPropertyAnimator(duration: 0.2, curve: .easeOut, animations: {
            self.view.layoutIfNeeded()
        }).startAnimation()
        
    }


}

