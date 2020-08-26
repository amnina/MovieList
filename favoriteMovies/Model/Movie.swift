//
//  Movie.swift
//  favoriteMovies
//
//  Created by Administrator on 26/08/2020.
//  Copyright © 2020 Nina. All rights reserved.
//

import Foundation

struct Movie {
	private(set) public var title: String
	private(set) public var imageName : String
	
	init(title: String, imageName: String) {
		self.title = title
		self.imageName = imageName
	}
}
