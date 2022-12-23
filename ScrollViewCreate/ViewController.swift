//
//  ViewController.swift
//  ScrollViewCreate
//
//  Created by Dilara Elçioğlu on 23.12.2022.
//

import UIKit
import SnapKit


class ViewController: UIViewController {

    var scrollView = UIScrollView()
    var firstLabel = UILabel()
    var secondLabel = UILabel()


    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()

    }

    func setUpUI(){
        view.addSubview(scrollView)
        view.addSubview(firstLabel) //
        view.addSubview(secondLabel)
       
        
        
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.snp.makeConstraints { make in
            make.centerX.centerY.height.width.equalToSuperview()
        }
       // scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        scrollView.backgroundColor = .systemYellow
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: scrollView.frame.size.height*2)
        scrollView.isPagingEnabled = true
        
        
        firstLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(80)
            make.centerXWithinMargins.equalTo(scrollView.snp.centerXWithinMargins)
            make.width.equalTo(150)
            make.height.equalTo(40)
        }
        firstLabel.backgroundColor = .purple
        firstLabel.text = "PURPLE"
        firstLabel.textColor = .white
        firstLabel.textAlignment = .center
        
        secondLabel.snp.makeConstraints { make in
            make.top.equalTo(firstLabel.snp.bottom).offset(100)
            make.centerXWithinMargins.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(40)
        }
        secondLabel.backgroundColor = .systemPink
        secondLabel.text = "PINK"
        secondLabel.textColor = .white
        secondLabel.textAlignment = .center
        scrollView.addSubview(secondLabel)
    }


}

