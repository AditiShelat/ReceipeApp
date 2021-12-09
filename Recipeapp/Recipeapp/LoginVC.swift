//
//  LoginVC.swift
//  Recipeapp
//
//  Created by DCS on 06/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    private let bgimage: UIImageView = {
        let bgimage = UIImageView()
        bgimage.image = UIImage(named: "bg3")
        return bgimage
    }()
    
    private let label :UILabel = {
        let label = UILabel()
        let font : UIFont = UIFont.boldSystemFont(ofSize: 30)
        label.font = .boldSystemFont(ofSize: 22)
        label.text = "Recipes"
        label.textAlignment = .center
        label.font = font
        label.textColor = .black
        
        return label
    }()
    
    private let username : UITextField = {
        
        let textView = UITextField()
        textView.placeholder = "Enter Username"
        textView.textAlignment = .center
        textView.backgroundColor = .white
        textView.layer.cornerRadius = 20
        return textView
    }()
    
    private let password : UITextField = {
        
        let textView = UITextField()
        textView.placeholder = "Enter Password"
        textView.textAlignment = .center
        textView.backgroundColor = .white
        textView.layer.cornerRadius = 20
        return textView
    }()
    
    private let saveButton:UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(login), for: .touchUpInside )
        button.tintColor = .white
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 6
        return button
    }()
    
    @objc private func login(){
        if(username.text == "Aditi" && password.text == "Aditi"){
            print("hello")
            let vc = RecipeMenu()
            navigationController?.pushViewController(vc, animated: true)
            //self.present(vc, animated: true, completion: nil)
            
        }else{
            let alert = UIAlertController(title: "Alert", message: "Invalid user", preferredStyle : UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
        override func viewDidLoad() {
            super.viewDidLoad()
            view.addSubview(bgimage)
            view.addSubview(label)
            view.addSubview(username)
            view.addSubview(password)
            view.addSubview(saveButton)
            
            
           
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        bgimage.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.width, height: 700)
        label.frame = CGRect(x: 20, y: 200, width: view.width - 40, height: 40)
        username.frame = CGRect(x: 20, y: label.bottom + 20, width: view.width - 40, height: 40)
        password.frame = CGRect(x: 20, y: username.bottom + 20, width: view.width - 40, height: 40)
        saveButton.frame = CGRect(x: 20, y: password.bottom + 20, width: view.width - 40, height: 40)
        
        
    }


}
