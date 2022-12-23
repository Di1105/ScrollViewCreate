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
    var thirdLabel = UILabel()
    var fourthLabel = UILabel()
    var imageView = UIImageView()
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()

    }
    
    func setUpUI(){
        view.addSubview(scrollView)
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        view.addSubview(thirdLabel)
    
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.snp.makeConstraints { make in
        make.top.bottom.leading.trailing.equalToSuperview()
        
        }
        
        //scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        
        scrollView.backgroundColor = .systemYellow
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: view.frame.size.height*2)
        scrollView.isPagingEnabled = true
        
        //FIRST LABEL-------------------------------------
        firstLabel.snp.makeConstraints { make in
        make.top.equalToSuperview().offset(300)
        make.centerXWithinMargins.equalToSuperview()
        make.width.equalTo(100)
        make.height.equalTo(40)
        }
        firstLabel.backgroundColor = .purple
        firstLabel.text = "PURPLE"
        firstLabel.textColor = .white
        firstLabel.textAlignment = .center
        scrollView.addSubview(firstLabel)
        
        //SECOND LABEL-----------------------------------
        secondLabel.snp.makeConstraints { make in
        make.bottom.equalTo(firstLabel.snp.bottom).offset(300)
        make.centerXWithinMargins.equalToSuperview()
        make.width.equalTo(100)
        make.height.equalTo(40)
        }
        secondLabel.backgroundColor = .systemPink
        secondLabel.text = "PINK"
        secondLabel.textColor = .white
        secondLabel.textAlignment = .center
        scrollView.addSubview(secondLabel)
        
        
        //THIRD LABEL-------------------------------------
        thirdLabel.snp.makeConstraints { make in
        make.top.equalTo(secondLabel.snp.bottom).offset(300)
        make.centerXWithinMargins.equalToSuperview()
        make.width.equalTo(100)
        make.height.equalTo(40)
        }
        thirdLabel.backgroundColor = .systemOrange
        thirdLabel.text = "ORANGE"
        thirdLabel.textColor = .white
        thirdLabel.textAlignment = .center
        scrollView.addSubview(thirdLabel)
    }
            
    
}

