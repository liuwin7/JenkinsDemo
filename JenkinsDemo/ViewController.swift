//
//  ViewController.swift
//  JenkinsDemo
//
//  Created by tropsci on 2019/4/26.
//  Copyright © 2019 RaymedyChina. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private let textLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Jenkins"
        
        textLabel.text = "Welcome to Jenkins!"
        self.view.addSubview(textLabel)
        textLabel.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview().inset(30)
            make.top.equalTo(self.view.snp.topMargin).offset(20)
        }
        
        let shadowOffset: CGFloat = 0
        let shadowView = UIView()
        shadowView.backgroundColor = .orange
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOpacity = 1
        shadowView.layer.shadowOffset = .init(width: shadowOffset, height: shadowOffset)
        shadowView.layer.shadowRadius = 8
        self.view.addSubview(shadowView)
        shadowView.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview().inset(16)
            make.top.equalTo(textLabel.snp.bottom).offset(16)
            make.height.(50)
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print(self.view.layoutMargins)
    }

}

