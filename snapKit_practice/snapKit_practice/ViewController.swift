//
//  ViewController.swift
//  snapKit_practice
//
//  Created by 노주영 on 2022/05/31.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    lazy var greenBox = { () -> UIView in
        let view = UIView()
        view.backgroundColor = .green
      //  view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    lazy var redBox = { () -> UIView in
        let view = UIView()
        view.backgroundColor = .red
      // view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    lazy var yellowBox = { () -> UIView in
        let view = UIView()
        view.backgroundColor = .yellow
      //  view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    lazy var blueBox = { () -> UIView in
        let view = UIView()
        view.backgroundColor = .blue
       // view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    lazy var myButton = { (color: UIColor) -> UIButton in
        let btn = UIButton(type: .system)
        btn.backgroundColor = color
        btn.setTitle("내 버튼", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 16
        
        return btn
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(yellowBox)
        self.view.addSubview(greenBox)
        self.view.addSubview(redBox)
        self.view.addSubview(blueBox)
        
        let myDarkGratBtn = myButton(.darkGray)
        
        self.view.addSubview(myDarkGratBtn)
        
        // 기존 yellowBox
       /* yellowBox.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        yellowBox.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        
        yellowBox.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        yellowBox.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        */
        
        // snapKit yellow Box
        yellowBox.snp.makeConstraints { make in
            make.edges.equalTo(self.view).inset(UIEdgeInsets(top: 40, left: 20, bottom: 40, right: 20))       //탑 바텀 리딩 트레일링 전부다
            
            //make.edges.equalToSuperview().inset(UIEdgeInsets(top: 50, left: 20, bottom: 50, right: 20))       //위와 같은 말
        }
        
        redBox.snp.makeConstraints { make in
            make.width.height.equalTo(100)                                      //크기
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(20)  //위 거리
            make.centerX.equalToSuperview()                                     //x 좌표
        }
        
        blueBox.snp.makeConstraints { make in
            make.width.equalTo(redBox.snp.width).dividedBy(1.5)           //크기 나누기
            make.height.equalTo(redBox.snp.height).multipliedBy(1.5)    //크기 키우기
            make.top.equalTo(redBox.snp.bottom).offset(20)              //offset은 띄우는 거리
            make.centerX.equalToSuperview()
        }
        
        greenBox.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.centerX.equalToSuperview()
            make.top.equalTo(blueBox.snp.bottom).offset(20)
        }
        
        myDarkGratBtn.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(100)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-30)
            make.centerX.equalToSuperview()
        }
    }
    


}

