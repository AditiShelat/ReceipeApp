//
//  RecipeMenu.swift
//  Recipeapp
//
//  Created by DCS on 06/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class RecipeMenu: UIViewController {
     private let myTableView=UITableView()
     private var foodArray=["burger","rice","nachos"]
    private let detail=["Hamburger, a sandwich consisting of one or more cooked patties, placed inside a sliced bread roll or bun. · Ground beef, minced beef used to make hamburgers.","Spanish rice, also known as Mexican rice, is a common side dish in northern Mexico. This always savory (and sometimes spicy) side dish is also popular outside of Mexico, especially in the Southwestern United States. The names Spanish rice and Mexican rice imply the same dish, although this recipe is not part of Spain's cuisine.","Nachos are a Mexican regional dish from northern Mexico that consists of heated tortilla chips or totopos covered with melted cheese (or a cheese-based sauce), often served as a snack or appetizer. "]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myTableView)
        setupTableView()
    
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myTableView.frame = CGRect(x:0, y:view.safeAreaInsets.top, width: view.frame.size.width, height: view.frame.size.height - view.safeAreaInsets.top - view.safeAreaInsets.bottom)
        
    }
    


}
extension RecipeMenu: UITableViewDataSource, UITableViewDelegate {
    
    private func setupTableView()
    {
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.register(FoodItem.self, forCellReuseIdentifier: "FoodItem")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodItem", for: indexPath) as! FoodItem
       
        cell.setupFoodCellWith(title: foodArray[indexPath.row],title1: detail[indexPath.row])
        cell.target(forAction: #selector(buttonclicked), withSender: self)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print(foodArray[indexPath.row])
             UserDefaults.standard.setValue(foodArray[indexPath.row], forKey: "foodname")
            let vc = RecipeIngredientsVC()
            navigationController?.pushViewController(vc, animated: true)
           
        }
    
  @objc private func buttonclicked( _ sender:UIButton) {
        print(foodArray[sender.tag])
        let vc = RecipeIngredientsVC()
        vc.food_item = foodArray[sender.tag]
        vc.food_no = Int32(sender.tag)
        navigationController?.pushViewController(vc, animated: true)
    }
    /*@objc private func  buttonclicked(){
    let vc = RecipeIngredientsVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    //navigationController?.pushViewController(vc, animated: true)
            //self.present(vc, animated: true, completion: nil)
    }*/
}

