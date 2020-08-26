//
//  ActorDetailsVC.swift
//  favoriteMovies
//
//  Created by Administrator on 26/08/2020.
//  Copyright © 2020 Nina. All rights reserved.
//

import UIKit

class ActorDetailsVC : UIViewController {
	var actor: Actor?
	@IBOutlet weak var imageView: UIImageView!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var ageLabel: UILabel!
	@IBOutlet weak var heightLabel: UILabel!
	@IBOutlet weak var weightLabel: UILabel!
	
	override func viewDidLoad() {
		if actor != nil {
			imageView.image = UIImage(named: actor!.imageName)
			nameLabel.text = "Name: " + actor!.name
			ageLabel.text = "Age: " + actor!.age + " years old"
			heightLabel.text = "Height: " + actor!.height + " cm"
			weightLabel.text = "Weight: " + actor!.weight + " kg"
		}

	}
}
