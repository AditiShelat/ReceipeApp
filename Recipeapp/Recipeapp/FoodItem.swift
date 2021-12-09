//
//  FoodItem.swift
//  Recipeapp
//
//  Created by DCS on 06/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class FoodItem: UITableViewCell {
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let myLabel:UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 28)
        return label
    }()
    private let myLabel1:UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 10)
        label.textAlignment = .left
        label.numberOfLines = 7
        return label
    }()
    public let heart:UIButton = {
        
        let button = UIButton()
        button.setImage(UIImage(contentsOfFile: "suit.heart.fill"), for: .normal)
        
        button.tintColor = .red
        return button
    }()
   /* public let myButton:UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "next"), for: .normal)
        button.tintColor = .black
        button.alpha = 0
        return button
    }()*/
    
    func setupFoodCellWith(title name:String ,title1 name1:String){
        
       contentView.addSubview(myImageView)
        contentView.addSubview(myLabel)
        contentView.addSubview(myLabel1)
        contentView.addSubview(heart)
        //contentView.addSubview(myButton)
        myImageView.frame = CGRect(x: 20, y: 25, width: 150, height: 150)
        
        myLabel.frame = CGRect(x: myImageView.right + 10, y: 20, width: 200, height: 40)
          myLabel1.frame = CGRect(x: myImageView.right + 10, y: myLabel.bottom+20, width: 150, height: 80)
       // myButton.frame = CGRect(x: contentView.width - 40, y: 80, width: 30, height: 30)
        heart.frame = CGRect(x: contentView.width - 80, y: 70, width: 40, height: 40)
        myImageView.image = UIImage(named: name)
        myLabel.text = name
        myLabel1.text = name1
    }
    
  

    

}
