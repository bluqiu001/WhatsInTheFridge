//
//  explorePageDetailViewController.swift
//  WhatsInTheFridge
//
//  Created by Qintian Wu on 4/5/21.
//

import UIKit

class explorePageDetailViewController: UIViewController {

    @IBOutlet weak var recipePicture: UIImageView!
    @IBOutlet weak var recipeName: UILabel!
    @IBOutlet weak var recipeDescription: UITextView!
    
    var picture:UIImage!
    var name:String!
    var descript: String!
    
    var liked = false
    var collected = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        recipeName.text = name
        recipePicture.image = picture
        recipeDescription.text = descript
        
    }
    

    @IBAction func likePost(_ sender: UIButton) {
        var heart: UIImage
        if liked{
            heart = UIImage(systemName: "heart")!
            print("You dislike this post")
            //[coredata] deleting
        } else{
            heart = UIImage(systemName: "heart.fill")!
            print("You like this post")
            //[coredata] saving
        }
        sender.setImage(heart, for: .normal)
        liked = !liked
    }
    
    @IBAction func collectPost(_ sender: UIButton) {
        var heart: UIImage
        if collected{
            heart = UIImage(systemName: "star")!
            print("You discollect this post")
            //[coredata] deleting
        } else{
            heart = UIImage(systemName: "star.fill")!
            print("You collect this post")
            //[coredata] saving
        }
        sender.setImage(heart, for: .normal)
        collected = !collected
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
