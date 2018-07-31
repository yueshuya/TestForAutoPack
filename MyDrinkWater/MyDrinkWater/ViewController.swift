//
//  ViewController.swift
//  MyDrinkWater
//
//  Created by 陈中宝 on 2018/7/17.
//  Copyright © 2018年 陈中宝. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    private let _bag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.orange
        let btn = UIButton(type: .custom)
        btn.backgroundColor = UIColor.gray
        btn.frame = CGRect(x: 10, y: 100, width: 100, height: 50)
        btn.setTitle("Click", for: .normal)
        view.addSubview(btn)
        
        let s = UISwitch(frame: CGRect(x: 10, y: 200, width: 100, height: 100))
        view.addSubview(s)
        btn.rx
            .tap
            .asObservable()
            .subscribe(onNext: { (_) in
                print("button click ...")
                s.isOn = !s.isOn
            })
            .disposed(by: _bag)
        
        
        let image = UIImage(contentsOfFile: Bundle.main.path(forResource: "aa.png", ofType: nil)!)!
        let imageView1 = UIImageView(image: image)
        imageView1.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        let imageView2 = UIImageView(image: image)
        imageView2.frame = CGRect(x: 100, y: 220, width: 100, height: 100)
        
        view.addSubview(imageView1)
        view.addSubview(imageView2)
        imageView1.addSubview(imageView2)
        
    }

    


}

