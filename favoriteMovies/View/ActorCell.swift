//
//  ActorCell.swift
//  favoriteMovies
//
//  Created by Administrator on 26/08/2020.
//  Copyright © 2020 Nina. All rights reserved.
//

import UIKit

class ActorCell: UICollectionViewCell {
	@IBOutlet weak var imageView: UIImageView!
	@IBOutlet weak var cellTitle: UILabel!
	
	func updateView(actor: Actor) {
		self.imageView.image = UIImage(named: actor.imageName) ?? UIImage()
		self.cellTitle.text = actor.name
	}
}
