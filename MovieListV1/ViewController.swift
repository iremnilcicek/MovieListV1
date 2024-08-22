//
//  ViewController.swift
//  MovieList
//
//  Created by Apple on 8.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myCollectionView:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        myCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        if let flowLayout =  myCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
            
        }
    }
    

}

extension ViewController:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellIdentifier", for: indexPath) as! MovieCollectionViewCell
        cell.setup(movie: movieList[indexPath.row])
        print(String(indexPath.row) + "Movie Number's title:" + movieList[indexPath.row].title )
        return cell
    }
}

extension ViewController:UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300.0, height: 300.00)
    }
}

extension ViewController:UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("SELECTED MOVIE:" + movieList[indexPath.row].title )
        
        if let myNavController = self.navigationController {
            let storyBoard = UIStoryboard(name:"Main", bundle: nil)
            var detailViewController:DetailViewController = storyBoard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
            
            detailViewController.selectedIndex = indexPath.row
            myNavController.pushViewController(detailViewController , animated: true)
        }
     
    }
}

