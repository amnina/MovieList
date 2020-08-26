//
//  ViewController.swift
//  favoriteMovies
//
//  Created by Administrator on 26/08/2020.
//  Copyright © 2020 Nina. All rights reserved.
//

import UIKit

class MoviesList: UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource {
	
	
	@IBOutlet weak var moviesTableView: UITableView!
	override func viewDidLoad() {
		super.viewDidLoad()
		moviesTableView.delegate = self
		moviesTableView.dataSource = self
		
	}
	func numberOfSections(in tableView: UITableView) -> Int {
		return DataService.instance.getMovies().count
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieCell {
			cell.collectionView.delegate = self
			cell.collectionView.dataSource = self
			cell.collectionView.accessibilityLabel = DataService.instance.getMovies()[indexPath.section].title
			return cell
		}
		return MovieCell()
	}
	
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return DataService.instance.getMovies()[section].title
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 200
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActorCell", for: indexPath) as? ActorCell {
			let actors = DataService.instance.getActors(movieName: collectionView.accessibilityLabel ?? "")
			let actor = actors[indexPath.row]
			cell.updateView(actor: actor)
			return cell
		}
		
		return ActorCell()
	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		DataService.instance.getActors(movieName: DataService.instance.getMovies()[section].title).count
	}
	
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {			let actors = DataService.instance.getActors(movieName: collectionView.accessibilityLabel ?? "")
		let actor = actors[indexPath.row]
		self.performSegue(withIdentifier: "ActorDetailsSegue", sender: actor)
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let barBtn = UIBarButtonItem()
		barBtn.title = ""
		navigationItem.backBarButtonItem = barBtn
		if let detailsVC = segue.destination as? ActorDetailsVC {
			detailsVC.actor = sender as! Actor
		}
	}

}

