//
//  ListViewController.swift
//  MovieListV1
//
//  Created by Apple Egitim on 4.09.2024.
//

import Foundation
import UIKit

class ListViewController:UIViewController, UICollectionViewDataSource,UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        myCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "myCollectionCell", for: indexPath) as! MovieTwoColumnCell
        let movie = movieList[indexPath.row]
        cell.setup(movie: movie )
        print("title:" + movie.title)
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150.0, height: 200.00)
    }
    
}
