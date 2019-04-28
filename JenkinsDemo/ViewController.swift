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
        self.view.backgroundColor = .red
        
        textLabel.text = "Welcome to Jenkins!"
        self.view.addSubview(textLabel)
        textLabel.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview().inset(30)
            make.top.equalTo(self.view.snp.topMargin).offset(20)
            
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print(self.view.layoutMargins)
    }

}

