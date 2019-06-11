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
    
}

extension ImageSelectionViewController: Scaling{
    func scalingImageView(transition: ScaleTransitioningDelegate) -> UIImageView? {
        return initialIMageView
    }
}
