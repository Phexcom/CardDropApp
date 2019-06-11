//
//  ImageSelectionViewController.swift
//  CardDropApp
//
//  Created by Kessovi on 6/11/19.
//  Copyright © 2019 Brian Advent. All rights reserved.
//

import UIKit

class ImageSelectionViewController: UIViewController {

    var image:UIImage?
    var category:Category?
    
    @IBOutlet weak var initialIMageView: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let availableImage = image, let availableCategory = category{
            
            initialIMageView.image = availableImage
            categoryLabel.text = availableCategory.categoryName
        }
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
