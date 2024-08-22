//
//  MovieListModel.swift
//  MovieList
//
//  Created by Apple on 20.08.2024.
//

import Foundation
import UIKit

struct Movie {
    var image:UIImage!
    var title:String!
    var desc:String!
    var trailer:String!
    var duration:Int!
    var releaseDate:String!
    var genre:String!
    var rating:String!
}

var movieList:[Movie] = [
    Movie(image: UIImage(named: "amber_alert"), title: "Amber Alert", desc:"Movie Description will be here", trailer: "https://www.youtube.com/watch?v=Hlo3o8um1FA", duration: 122, releaseDate: "11.11.11", genre:"Drama", rating: "7.2"),
    Movie(image: UIImage(named:"apartment_seven_a"), title: "Apartment Seven A"),
    Movie(image: UIImage(named:"bonhoeffer_ver2"), title: "Bonhoeffer V2"),
    Movie(image: UIImage(named:"jackpot_ver2"), title: "Jackpot V2"),
    Movie(image: UIImage(named:"jam_ver4"), title: "Jam V4"),
    Movie(image: UIImage(named:"joker_folie_a_deux_ver2"), title: "Joker V2"),
    Movie(image: UIImage(named:"just_a_bit_outside"), title: "Just a Bit Outside"),
    Movie(image: UIImage(named:"notice_to_quit"), title: "Notice To Quit"),
    Movie(image: UIImage(named:"saturday_night_ver3"), title: "Saturday Night V3"),
    Movie(image: UIImage(named:"transformers_one_ver16"), title: "Transformers V16")
    
]



