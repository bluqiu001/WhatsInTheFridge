//
//  AddIngredientViewController.swift
//  WhatsInTheFridge
//
//  Created by Suqian Wang on 4/5/21.
//

import UIKit

class AddIngredientViewController: UIViewController {


    @IBOutlet weak var ingredientName: UITextField!
    var ingredient = Ingredient(name: "Default Ingredient")
    var bg_imageView: UIImageView!
    
    private func background_config() -> UIImageView {
        bg_imageView = UIImageView(frame: view.bounds)
        bg_imageView = UIImageView(image: UIImage(named: "background"))
        bg_imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        bg_imageView.clipsToBounds = true
        bg_imageView.center = view.center
        return bg_imageView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //add background
        bg_imageView = background_config()
        view.addSubview(bg_imageView)
        self.view.sendSubviewToBack(bg_imageView)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "doneSegue"{
            ingredient = Ingredient(name: ingredientName.text!)!
        }
    }

}
