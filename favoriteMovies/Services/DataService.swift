//
//  DataService.swift
//  favoriteMovies
//
//  Created by Administrator on 26/08/2020.
//  Copyright © 2020 Nina. All rights reserved.
//

import Foundation

class DataService {
	static let instance = DataService()
	
	private let movies = [
		Movie(title: "Movie 1", imageName: "cc.png"),
		Movie(title: "Movie 2", imageName: "bb.png"),
		Movie(title: "Finishing Up", imageName: "image01.png"),
		Movie(title: "Done", imageName: "image02.png")
	]
	
	private let ActorsForMovie1 = [
		Actor(name: "Ella", imageName: "unnamed.png", age: "12", height: "123", weight: "45"),
		Actor(name: "Aida", imageName: "yellow.jpg", age: "54", height: "145", weight: "70"),
		Actor(name: "Sebastian", imageName: "purple.jpg", age: "76", height: "167", weight: "48"),
		Actor(name: "Vicky", imageName: "red.jpg", age: "12", height: "112", weight: "56"),
		Actor(name: "Atiqah", imageName: "yellow.jpg", age: "7", height: "122", weight: "56"),
		Actor(name: "Raifq", imageName: "red.jpg", age: "54", height: "166", weight: "70"),
		Actor(name: "Faris", imageName: "unnamed.png", age: "32", height: "188", weight: "45"),
		Actor(name: "Zafri", imageName: "purple.jpg", age: "25", height: "199", weight: "48")
		
	]
	
	private let ActorsForMovie2 = [
		Actor(name: "Hailey", imageName: "red.jpg", age: "65", height: "120", weight: "56"),
		Actor(name: "Jen", imageName: "unnamed.png", age: "4", height: "167", weight: "45"),
		Actor(name: "Michael", imageName: "purple.jpg", age: "89", height: "155", weight: "70"),
		Actor(name: "Victoria", imageName: "yellow.jpg", age: "10", height: "144", weight: "89"),
		Actor(name: "Emily Burn", imageName: "red.jpg", age: "34", height: "144", weight: "56"),
		Actor(name: "Zac Efron", imageName: "purple.jpg", age: "21", height: "177", weight: "70"),
		Actor(name: "Habisherr", imageName: "yellow.jpg", age: "22", height: "142", weight: "48"),
		Actor(name: "Beckham", imageName: "unnamed.png", age: "61", height: "166", weight: "45")
	]
	
	private let ActorsForFinishingUp = [
		Actor(name: "Atiqah", imageName: "yellow.jpg", age: "7", height: "122", weight: "56"),
		Actor(name: "Raifq", imageName: "red.jpg", age: "54", height: "166", weight: "70"),
		Actor(name: "Faris", imageName: "unnamed.png", age: "32", height: "188", weight: "45"),
		Actor(name: "Zafri", imageName: "purple.jpg", age: "25", height: "199", weight: "48"),
		Actor(name: "Ella", imageName: "unnamed.png", age: "12", height: "123", weight: "45"),
		Actor(name: "Aida", imageName: "yellow.jpg", age: "54", height: "145", weight: "70"),
		Actor(name: "Sebastian", imageName: "purple.jpg", age: "76", height: "167", weight: "48"),
		Actor(name: "Vicky", imageName: "red.jpg", age: "12", height: "112", weight: "56")
	]
	
	private let ActorsForDone = [
		Actor(name: "Emily Burn", imageName: "red.jpg", age: "34", height: "144", weight: "56"),
		Actor(name: "Zac Efron", imageName: "purple.jpg", age: "21", height: "177", weight: "70"),
		Actor(name: "Habisherr", imageName: "yellow.jpg", age: "22", height: "142", weight: "48"),
		Actor(name: "Beckham", imageName: "unnamed.png", age: "61", height: "166", weight: "45"),
		Actor(name: "Hailey", imageName: "red.jpg", age: "65", height: "120", weight: "56"),
		Actor(name: "Jen", imageName: "unnamed.png", age: "4", height: "167", weight: "45"),
		Actor(name: "Michael", imageName: "purple.jpg", age: "89", height: "155", weight: "70"),
		Actor(name: "Victoria", imageName: "yellow.jpg", age: "10", height: "144", weight: "89")
	]
	
	func getMovies () -> [Movie] {
		return movies
	}
	
	func getActors(movieName: String) -> [Actor] {
		switch movieName {
		case "Movie 1":
			return ActorsForMovie1
		case "Movie 2":
			return ActorsForMovie2
		case "Finishing Up":
			return ActorsForFinishingUp
		case "Done":
			return ActorsForDone
		default:
			return ActorsForMovie1
		}
	}
}
