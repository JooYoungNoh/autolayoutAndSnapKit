//
//  ViewController.swift
//  autolayout_practice
//
//  Created by 노주영 on 2022/05/30.
//

import UIKit

class ViewController: UIViewController {
    
    //label 그리기
    let firstLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemGray
        label.numberOfLines = 0
        label.text = "HelloHelloHelloHello"
        label.textColor = .red
        
        return label
    }()
    
    //두번째 뷰 그리기
    let secondView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemPink
        
        return view
    }()
    
    //세번째 뷰 그리기
    let thirdView: MyCircleView = {
        let view = MyCircleView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view 그리기
        let firstView = UIView()
        firstView.translatesAutoresizingMaskIntoConstraints = false
        firstView.backgroundColor = UIColor.systemBlue
        self.view.addSubview(firstView)
        
        //위치
        firstView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        firstView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200).isActive = true
        
        //크기
        firstView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        firstView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        
        
        //label
        self.view.addSubview(firstLabel)
        
        firstLabel.leadingAnchor.constraint(equalTo: firstView.leadingAnchor, constant: 10).isActive = true
        firstLabel.trailingAnchor.constraint(equalTo: firstView.trailingAnchor, constant: -10).isActive = true
        
        firstLabel.topAnchor.constraint(equalTo: firstView.bottomAnchor, constant: 10).isActive = true
        
        firstLabel.heightAnchor.constraint(lessThanOrEqualToConstant: 200).isActive = true
       
        //두번째 뷰
        self.view.addSubview(secondView)
        
        NSLayoutConstraint.activate([
            secondView.leadingAnchor.constraint(equalTo: firstLabel.leadingAnchor, constant: 20),
            secondView.trailingAnchor.constraint(equalTo: firstLabel.trailingAnchor, constant: -50),
            secondView.topAnchor.constraint(equalTo: firstLabel.bottomAnchor),
            secondView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        //세번째 뷰
        firstView.addSubview(thirdView)
        
        thirdView.leadingAnchor.constraint(equalTo: firstView.leadingAnchor, constant: 50).isActive = true
        thirdView.trailingAnchor.constraint(equalTo: firstView.trailingAnchor, constant: -50).isActive = true
        thirdView.topAnchor.constraint(equalTo: firstView.topAnchor, constant: 50).isActive = true
        thirdView.bottomAnchor.constraint(equalTo: firstView.bottomAnchor, constant: -50).isActive = true
        
        
        
    
    }


}

