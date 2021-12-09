//
//  RecipeIngredientsVC.swift
//  Recipeapp
//
//  Created by DCS on 08/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class RecipeIngredientsVC: UIViewController {

    var food_item:String = ""
    var food_no:Int32 = 0
    private var step1 = ["Remove your frozen burger patties from the plastic packaging.Using a metal spatula, split the patties apart from each other.Add oil to a cast-iron pan set to medium-high.","Allow your pizza to defrost for 1-2 hours. Before you get cooking, pull your pizza out of the freezer and set it on your countertop to thaw to room temperature. If you bake your pizza while it’s still frozen, the outer layer of frost will melt and turn to steam, leaving the crust and toppings a soggy, chewy mess",
                         "To prepare this mouth-watering snack recipe, put a deep-bottomed pan over medium flame and add water in it and bring it to a boil. Meanwhile, take a chopping board and finely chop onion, capsicum, tomato and green chilli on it. Once the water begins to boil, add Maggi masala noodles and peas to it. Let it cook till the noodles and peas are soft and tender.","firstly, in saute capsicum for 2-3 minutes in some oil.further, add boiled potato and crumbled paneer.add chili powder, garam masala powder, chaat masala and salt.mix well and prepare cylindrical shaped sticks. keep aside.now, add butter onto the tawa."]
    private var step2 = ["Season each side with salt and pepper. Note: allowing just a couple of minutes to thaw will help the seasonings stick.Place frozen, seasoned patties onto the hot cast-iron pan.","Remove your thawed pizza from the box. Pull away the tear strip sealing the opening of the box and separate the cardboard flaps. Slide the palm of your hand underneath the pizza and pull it out, making sure it’s facing up. Then, peel away and discard the outer plastic wrap and cardboard base.",
                         "Next, in another pan, add butter and let it melt. Then, add chopped onion and saute till it changes colour. Now, add garlic paste, chopped capsicum, tomato and green chilli to it and saute well for a couple of minutes, till the tomatoes are soft.",
                         "and roast leftover chapathi or wraps until they warm up.now place the roasted chapathi or wrap on a flat surface.spread generous amount of tomato sauce.also place lettuce, carrot and onion in the centre of chapathi.further, place the prepared cylindrical stuffing of aloo in center."]
    private var step3 = ["Cook 3-5 minutes on each side, then flip.Continue flipping until a nice crust has formed — about 15 minutes.Remove from the pan and serve on your favorite bun!"," Brush the crust with olive oil for additional flavor and crunch. Dip a basting brush in extra virgin olive oil and go over the ring of crust around the edges of the pizza. As it heats up in the oven or microwave, it will absorb into the crust, producing a smooth, subtle taste and extra crispy texture.",
                         "Next, in the sauteed vegetables, add red chilli powder, turmeric powder, garam masala powder, black pepper powder and saute for a minute. Now, add the boiled Maggi noodles and peas to this masala and mix well and cook for 1 more minute.","and apply green chutney.now fold the bottom up.also slowly, fold both the sides one after another.roll into aluminium foil or butter paper covering the frankie.finally, veg frankie or kathi roll is ready to serve with tomato sauce."]
    
   
    private let MyImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named : ((UserDefaults.standard.string(forKey: "foodname") ?? nil) ?? nil)!)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let Step1:UILabel = {
        
        let myLabel = UILabel()
        myLabel.text = "Step 1"
        //myLabel.textAlignment = .center
        myLabel.backgroundColor = .clear
        myLabel.textColor = .blue
        myLabel.font = .boldSystemFont(ofSize: 20)
        return myLabel
    }()
    
    private let Step2:UILabel = {
        
        let myLabel = UILabel()
        myLabel.text = "Step 2"
        //myLabel.textAlignment = .center
        myLabel.backgroundColor = .clear
        myLabel.textColor = .blue
        myLabel.font = .boldSystemFont(ofSize: 20)
        return myLabel
    }()
    
    private let Step3:UILabel = {
        
        let myLabel = UILabel()
        myLabel.text = "Step 3"
        myLabel.textColor = .blue
        //myLabel.textAlignment = .center
        myLabel.backgroundColor = .clear
        myLabel.font = .boldSystemFont(ofSize: 20)
        return myLabel
    }()
    
    private let myTextView1 : UITextView = {
        
        let textView = UITextView()
        textView.text = ""
        //textView.textAlignment =
        textView.font = .boldSystemFont(ofSize: 15)
        textView.backgroundColor = .clear
        
        return textView
    }()
    private let myTextView2 : UITextView = {
        
        let textView = UITextView()
        textView.text = ""
        //textView.textAlignment =
        textView.font = .boldSystemFont(ofSize: 15)
        textView.backgroundColor = .clear
        
        return textView
    }()
    private let myTextView3 : UITextView = {
        
        let textView = UITextView()
        textView.text = ""
        textView.font = .boldSystemFont(ofSize: 15)
        //textView.textAlignment =
        textView.backgroundColor = .clear
        
        return textView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = .white
        //title = food_item
        view.backgroundColor = .white
        setupUI(stp1: food_no)
        view.addSubview(MyImageView)
        view.addSubview(Step1)
        view.addSubview(myTextView1)
        view.addSubview(Step2)
        view.addSubview(myTextView2)
        view.addSubview(Step3)
        view.addSubview(myTextView3)
        
        
        // Do any additional setup after loading the view.
    }
    func setupUI(stp1:Int32){
        myTextView1.text = step1[Int(stp1)]
        myTextView2.text = step2[Int(stp1)]
        myTextView3.text = step3[Int(stp1)]
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        MyImageView.frame = CGRect(x: 10, y:50, width: 500, height: 200)
        Step1.frame = CGRect(x: 10, y: MyImageView.bottom + 5, width: view.width - 20, height: 30)
        myTextView1.frame = CGRect(x: 10, y: Step1.bottom + 5, width: view.width - 20, height: 80)
        Step2.frame = CGRect(x: 10, y: myTextView1.bottom + 5, width: view.width - 20, height: 30)
        myTextView2.frame = CGRect(x: 10, y: Step2.bottom + 5, width: view.width - 20, height: 80)
        Step3.frame = CGRect(x: 10, y: myTextView2.bottom + 5, width: view.width - 20, height: 30)
        myTextView3.frame = CGRect(x: 10, y: Step3.bottom + 5, width: view.width - 20, height: 80)
    }
    

   

}
