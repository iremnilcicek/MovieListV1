//
//  WebViewController.swift
//  MovieList
//
//  Created by Apple Egitim on 22.08.2024.
//

import Foundation
import UIKit
import WebKit

class WebViewController:UIViewController {
    @IBOutlet var webView:WKWebView!
    
    
    var selectedMovieIndex:Int = 0
    var selectedMovie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("selected movie index\(selectedMovieIndex)")
        selectedMovie = movieList[selectedMovieIndex]
        loadYoutube(videoURL: selectedMovie.trailer)
        print("trailer url: " + selectedMovie.trailer )
    }
    
    func loadYoutube(videoURL:String) {
        if let youtubeURL = URL( string: videoURL) {
            webView.load( URLRequest(url:youtubeURL) )
        }
        else { return }
        
    }
    
    @IBAction func closeActionButton(_sender:Any) {
        self.dismiss(animated: true)
        print("dismissed!")
    }
    
}
