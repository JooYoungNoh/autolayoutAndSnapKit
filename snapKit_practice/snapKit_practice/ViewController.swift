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
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    lazy var yellowBox = { () -> UIView in
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    lazy var blueBox = { () -> UIView in
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(greenBox)
        self.view.addSubview(redBox)
        self.view.addSubview(yellowBox)
        self.view.addSubview(blueBox)
        
        // 기존 yellowBox
       /* yellowBox.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        yellowBox.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        
        yellowBox.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        yellowBox.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        */
        
        // snapKit yellow Box
        yellowBox.snp.makeConstraints { make in
            make.edges.equalTo(self.view).inset(UIEdgeInsets(top: 50, left: 20, bottom: 50, right: 20))       //탑 바텀 리딩 트레일링 전부다
        }
    }


}

