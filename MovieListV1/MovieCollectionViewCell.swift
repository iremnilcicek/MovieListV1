//
//  MovieCollectionViewCell.swift
//  MovieList
//
//  Created by Apple on 20.08.2024.
//

import Foundation
import UIKit

class MovieCollectionViewCell:UICollectionViewCell {
    
    @IBOutlet var movieImageView:UIImageView!
    @IBOutlet var movieTitleButton:UIButton!
    
    func setup(movie:Movie) {
        movieImageView.image = movie.image
        movieImageView.layer.cornerRadius = 40.0
        movieTitleButton.setTitle(movie.title,for: UIControl.State.normal)
        
    }
}
