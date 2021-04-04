//
//  RecipeDetailViewController.swift
//  WhatsInTheFridge
//
//  Created by Billy Luqiu on 4/3/21.
//

import UIKit

class RecipeDetailViewController: UIViewController {

    @IBOutlet weak var recipeSteps: UILabel!
    @IBOutlet weak var weightWatcherSmartPoints: UILabel!
    
    
    var recipeStep: String!
    
    var wwSmartPoints: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeSteps.text = recipeStep
        weightWatcherSmartPoints.text = wwSmartPoints

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
