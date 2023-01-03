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
    
    var labelB1 = UILabel()
    var buttonB = UIButton()
    var buttonA = UIButton()

    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()

    }
    
    func setUpUI(){
    
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints { make in
        make.top.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview().offset(-100)
        
        }
                
        scrollView.backgroundColor = .systemYellow
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: view.frame.size.height*4)
        scrollView.isPagingEnabled = true
        
        //FIRST LABEL-------------------------------------
        
        scrollView.addSubview(firstLabel)
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
        
        //SECOND LABEL-------------------------------------
       
        scrollView.addSubview(secondLabel)
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
        
        
        //THIRD LABEL-------------------------------------
        
        scrollView.addSubview(thirdLabel)
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
        
        view.addSubview(labelB1)
        labelB1.snp.makeConstraints { make in
        make.bottom.equalTo(view.snp.bottom).offset(-30)
        make.leading.equalToSuperview().offset(20)
        make.width.equalTo(80)
        make.height.equalTo(40)
        }
        labelB1.backgroundColor = .white
        labelB1.text = "79.99 TL"
        labelB1.textColor = .black
        labelB1.textAlignment = .center
        
        view.addSubview(buttonA)
        buttonA.snp.makeConstraints { make in
        make.centerY.equalTo(labelB1)
        make.leading.equalTo(labelB1.snp.trailing).offset(80)
        make.width.equalTo(110)
        make.height.equalTo(48)
        }
        buttonA.backgroundColor = .white
        buttonA.setTitle("Teklif Ver", for: .normal)
        buttonA.setTitleColor(.systemMint, for: .normal)
        buttonA.layer.cornerRadius = 24
        buttonA.layer.borderWidth = 1
        buttonA.layer.borderColor = UIColor.systemMint.cgColor
        
        
        view.addSubview(buttonB)
        buttonB.snp.makeConstraints { make in
        make.centerY.equalTo(labelB1)
        make.trailing.equalToSuperview().offset(-20)
        make.width.equalTo(110)
        make.height.equalTo(48)
        }
        buttonB.backgroundColor = .systemMint
        buttonB.setTitle("Sepete Ekle", for: .normal)
        buttonB.setTitleColor(.white, for: .normal)
        buttonB.layer.cornerRadius = 24
        
    }
    
    
            
    
}

