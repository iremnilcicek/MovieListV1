//
//  TrendingMoviesResponseModel.swift
//  MovieListV1
//
//  Created by Apple Egitim on 27.08.2024.
//

import Foundation

struct TrendingMoviesResponseModel : Codable {
    let page:Int
    let results:[MovieResponse]
}

struct MovieResponse : Codable {
    let id:Int
    let title:String
    let overview:String
    let poster_path:String
    let release_date:String
    let vote_average:Double
    
    
}
